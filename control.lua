-- Dynamic wind speed control system [DWSCS]
local dynamic_wind_enabled = settings.startup["dynamic-wind-speed"].value

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

-- Base power per turbine (in kW)
local BASE_POWER_KW = {
    ["rusty-wind-turbine"] = 36,
    ["wind-turbine"] = 65,
    ["eco-wind-turbine"] = 107,
    ["advanced-wind-turbine"] = 160,
    ["big-wind-turbine"] = 1100,
}

local function get_base_power(entity)
    -- convert kW → J/tick
    local kW = BASE_POWER_KW[entity.name] or 0
    return (kW * 1000) / 60
end


local function calculate_adjusted_power(wind_multiplier, entity_power)
    return math.floor(entity_power * wind_multiplier)
end

function get_wind_multiplier()
    local rand = math.random()
    local wind_multiplier = 0

    if rand <= 0.7 then
        -- 70% chance: 93-100%
        wind_multiplier = 0.93 + (rand / 0.7) * 0.07
    elseif rand <= 0.9 then
        -- 20% chance: 85-92%
        wind_multiplier = 0.85 + ((rand - 0.7) / 0.2) * 0.07
    else
        -- 10% chance: 75-84%
        wind_multiplier = 0.75 + ((rand - 0.9) / 0.1) * 0.09
    end
    return math.floor(wind_multiplier * 100 + 0.5) / 100
end

function apply_wind_speed()
    storage.wind_multiplier = get_wind_multiplier()
    local wind_multiplier = storage.wind_multiplier

    for id, data in pairs(storage.turbines) do 
        local turbine = data.entity
        if turbine and turbine.valid then 
            local base_power = get_base_power(turbine)
            local adjusted_power = calculate_adjusted_power(wind_multiplier, base_power)
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

local filter = {
    {filter = "name", name = "wind-turbine"},
    {filter = "name", name = "advanced-wind-turbine"},
    {filter = "name", name = "big-wind-turbine"},
    {filter = "name", name = "eco-wind-turbine"},
    {filter = "name", name = "rusty-wind-turbine"}
}

function on_built(event)
    local entity = event.created_entity or event.entity
    if entity and entity.valid then 
        local wind_multiplier = storage.wind_multiplier or 1.0  -- use last applied multiplier
        local base_power = get_base_power(entity)
        local adjusted_power = calculate_adjusted_power(wind_multiplier, base_power)
        entity.power_production = adjusted_power
        storage.turbines[entity.unit_number] = {
            entity = entity,
            power = adjusted_power
        }
    end
end


script.on_event(defines.events.on_built_entity, on_built, filter)
script.on_event(defines.events.on_robot_built_entity, on_built, filter)
script.on_event(defines.events.script_raised_revive, on_built, filter)