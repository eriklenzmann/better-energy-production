-- Dynamic wind speed control system [DWSCS]
local dynamic_wind_enabled = settings.startup["dynamic-wind-speed"].value

-- NEW: Mapping for buildings that require exclusion zones
local exclusion_map = {
    ["wave-power-plant"] = "wave-power-plant-collision",
    ["big-wind-turbine"] = "big-wind-turbine-collision"
}

function setup_mod_vars()
    storage.turbines = storage.turbines or {}
    storage.wind_multiplier = storage.wind_multiplier or 1.0
end

function on_init()
    setup_mod_vars()
end
script.on_init(on_init)

function on_configuration_changed()
    setup_mod_vars()
end
script.on_configuration_changed(on_configuration_changed)

-- Base power per turbine / wave generator (in kW)
local BASE_POWER_KW = {
    ["rusty-wind-turbine"] = 36,
    ["wind-turbine"] = 65,
    ["eco-wind-turbine"] = 107,
    ["advanced-wind-turbine"] = 160,
    ["big-wind-turbine"] = 1100,
    ["wave-power-plant"] = 250,
}

local function get_base_power(entity)
    local kW = BASE_POWER_KW[entity.name] or 0
    return (kW * 1000) / 60
end

local function calculate_adjusted_power(wind_multiplier, entity_power)
    return math.floor(entity_power * wind_multiplier)
end

function get_wind_multiplier()
    local rand = math.random()
    local wind_multiplier = 0
    if rand <= 0.25 then
        -- 25% chance of calm/low wind lull: 0.20 - 0.50
        wind_multiplier = 0.20 + (rand / 0.25) * 0.30
    elseif rand <= 0.70 then
        -- 45% chance of moderate wind: 0.51 - 0.85
        wind_multiplier = 0.51 + ((rand - 0.25) / 0.45) * 0.34
    else
        -- 30% chance of high wind: 0.86 - 1.00
        wind_multiplier = 0.86 + ((rand - 0.70) / 0.30) * 0.14
    end
    return math.floor(wind_multiplier * 100 + 0.5) / 100
end

function apply_wind_speed()
    storage.wind_multiplier = get_wind_multiplier()
    local wind_multiplier = storage.wind_multiplier
    -- Wave power is 1/2 as volatile as wind: multiplier = 0.5 + 0.5 * wind_multiplier
    local wave_multiplier = math.floor((0.5 + 0.5 * wind_multiplier) * 100 + 0.5) / 100

    for id, data in pairs(storage.turbines) do 
        local turbine = data.entity
        if turbine and turbine.valid then 
            local mult = (turbine.name == "wave-power-plant") and wave_multiplier or wind_multiplier
            local base_power = get_base_power(turbine)
            local adjusted_power = calculate_adjusted_power(mult, base_power)
            if data.power ~= adjusted_power then 
                turbine.power_production = adjusted_power
                turbine.electric_buffer_size = adjusted_power
                data.power = adjusted_power
            end
        else
            storage.turbines[id] = nil
        end
    end
end

if dynamic_wind_enabled then
    script.on_nth_tick(36000, function(event)
        apply_wind_speed()
    end)
end

-- Updated filter to include all entities handled by this script
local event_filter = {
    {filter = "name", name = "wind-turbine"},
    {filter = "name", name = "advanced-wind-turbine"},
    {filter = "name", name = "big-wind-turbine"},
    {filter = "name", name = "eco-wind-turbine"},
    {filter = "name", name = "rusty-wind-turbine"},
    {filter = "name", name = "wave-power-plant"},
    {filter = "name", name = "smart-solar-panel"},
    {filter = "name", name = "smart-solar-panel-second"}
}

-- Unified build handler (Fixes the event-overwrite bug)
function handle_built_entity(event)
    local entity = event.created_entity or event.entity or event.destination
    if not (entity and entity.valid) then return end
    local name = entity.name

    -- 1. Exclusion Zone Logic: Spawn the hidden collision box
    if exclusion_map[name] then
        entity.surface.create_entity({
            name = exclusion_map[name],
            position = entity.position,
            force = entity.force
        })
    end

    -- 2. DWSCS Logic: Register wind turbines and wave power plants
    if BASE_POWER_KW[name] then
        local wind_multiplier = storage.wind_multiplier or 1.0
        local mult = (name == "wave-power-plant") and (math.floor((0.5 + 0.5 * wind_multiplier) * 100 + 0.5) / 100) or wind_multiplier
        local base_power = get_base_power(entity)
        local adjusted_power = calculate_adjusted_power(mult, base_power)
        entity.power_production = adjusted_power
        entity.electric_buffer_size = adjusted_power
        storage.turbines[entity.unit_number] = {
            entity = entity,
            power = adjusted_power
        }
    end

    -- 3. Smart Solar Panel Logic
    if name == "smart-solar-panel" or name == "smart-solar-panel-second" then
        local new_entity = entity.surface.create_entity {
            name = "smart-solar-panel-second",
            position = entity.position,
            surface = entity.surface,
            force = entity.force
        }
        if new_entity and new_entity.valid then 
            rendering.draw_animation {
                animation = "ssp-animation",
                render_layer = "entity-info-icon-above",
                target = new_entity,
                surface = new_entity.surface
            }
        end
        entity.destroy()
    end
end

-- NEW: Destruction handler to clean up hidden collision entities
function handle_destroyed_entity(event)
    local entity = event.entity
    if not (entity and entity.valid) then return end
    
    if exclusion_map[entity.name] then
        local collision_name = exclusion_map[entity.name]
        local hidden_boxes = entity.surface.find_entities_filtered({
            name = collision_name,
            position = entity.position
        })
        for _, box in pairs(hidden_boxes) do
            box.destroy()
        end
    end
end

-- Registration
-- Define the event groups
local build_events = {
    defines.events.on_built_entity, 
    defines.events.on_robot_built_entity, 
    defines.events.script_raised_revive, 
    defines.events.script_raised_built
}

local destroy_events = {
    defines.events.on_player_mined_entity, 
    defines.events.on_robot_mined_entity, 
    defines.events.on_entity_died, 
    defines.events.script_raised_destroy
}

-- Register each build event individually to allow the use of filters
for _, event in pairs(build_events) do
    script.on_event(event, handle_built_entity, event_filter)
end

-- Register each destruction event individually to allow the use of filters
for _, event in pairs(destroy_events) do
    script.on_event(event, handle_destroyed_entity, event_filter)
end