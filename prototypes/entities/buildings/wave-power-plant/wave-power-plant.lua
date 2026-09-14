data:extend(
{
    {
        type = "recipe",
        name = "wave-power-plant",
        enabled = false,
        ingredients = 
        {
            {type = "item", name = "steel-plate", amount = 10},
            {type = "item", name = "copper-cable", amount = 20},
            {type = "item", name = "advanced-circuit", amount = 5},
            {type = "item", name = "engine-unit", amount = 10},
            {type = "item", name = "kr-steel-beam", amount = 5}
        },
        energy_required = 60,
        results = {
            {type = "item", name = "wave-power-plant", amount = 1}
        }
    },
    {
        type = "item",
        name = "wave-power-plant",
        icon = "__Better-Energy-production__/graphics/icon/wave-power-plant.png",
        icon_size = 32,
        place_result = "wave-power-plant",
        stack_size = 10,
        subgroup = "b-e-p",
        order = "al"
    },
    {
        type = "electric-energy-interface",
        name = "wave-power-plant",
        icon = "__Better-Energy-production__/graphics/icon/wave-power-plant.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {hardness = 1.25, mining_time = 1, result = "wave-power-plant"},
        max_health = 450,
        place_result = "wave-power-plant",
        corpse = "small-remnants",
        collision_mask = {layers = {ground_tile=true, train=true, car=true, is_object=true, kr_wind_turbine=true }},
        collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
        selection_box = {{-1, -1}, {1, 1}},
        
        -- NEW: Visual radius that shows up when the player is placing the entity
        radius_visualisation_specification = {
            sprite = {
                filename = "__Krastorio2Assets__/buildings/wind-turbine/wind-turbine-radius-visualisation.png", 
                width = 12,
                height = 12,
            },
            distance = 3, -- This defines the visual size of the exclusion zone
        },

        energy_source = 
        {
            type = "electric",
            buffer_capacity = "250kJ",
            usage_priority = "primary-output",
            input_flow_limit = "0kW",
            output_flow_limit = "250kW",
            render_no_power_icon = false,
        },
        energy_production = "250kW",
        energy_usage = "0kW",
        animation = 
        {
            filename = "__Better-Energy-production__/graphics/animation/wave-power-plant.png",
            priority = "high",
            width = 175,
            height = 175,
            frame_count = 20,
            line_length = 5,
            shift = {1.4, -0.4},
            animation_speed = 0.25
        },
        continuous_animation = true
    },
    
    -- NEW: The hidden entity that enforces the exclusion zone
    {
        type = "simple-entity",
        name = "wave-power-plant-collision",
        localised_name = {"entity-name.wave-power-plant"},
        icon = "__Better-Energy-production__/graphics/icon/wave-power-plant.png",
        icon_size = 32,
        hidden = true,
        collision_mask = {layers = {kr_wind_turbine = true}},
        -- This is the actual size of the exclusion zone (currently 6x6)
        collision_box = {{-3, -3}, {3, 3}}, 
        picture = {filename = "__core__/graphics/empty.png", size = 1},
        flags = {"not-on-map", "not-selectable-in-game", "placeable-off-grid"},
    },
}
)