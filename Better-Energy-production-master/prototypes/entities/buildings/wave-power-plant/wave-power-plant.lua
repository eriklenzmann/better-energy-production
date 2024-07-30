data:extend(
{
    {
        type = "recipe",
        name = "wave-power-plant",
        enabled = false,
        ingredients = 
        {
            {"steel-plate", 10},
            {"copper-cable", 20},
            {"advanced-circuit", 15},
            {"electric-engine-unit", 1}
        },
        energy_required = 60,
        result = "wave-power-plant",
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
        collision_mask = { "ground-tile", "object-layer"},
        collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
        selection_box = {{-1, -1}, {1, 1}},
        --drawing_box = {{-0.5, -3}, {3.2, 0.5}},
        energy_source = 
        {
            type = "electric",
            buffer_capacity = "20kJ",
            usage_priority = "primary-output",
            output_flow_limit = "925kW",
            render_no_power_icon = false,
        },
        energy_production = "925kW",
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
    }
}
)