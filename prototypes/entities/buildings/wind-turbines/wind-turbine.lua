require("prototypes.other.item-subgroups")

data:extend(
{
    {
        type = "item",
        name = "wind-turbine",
        icon = "__Better-Energy-production__/graphics/icon/wind-turbine.png",
        icon_size = 32,
        stack_size = 100,
        place_result = "wind-turbine",
        subgroup = "turbine",
        order = "ad"
    },
    {
        type = "recipe",
        name = "wind-turbine",
        enabled = false,
        ingredients = 
        {
            {"iron-plate", 30},
            {"iron-stick", 20},
            {"engine-unit", 1},
            {"electronic-circuit", 15}
        },
        energy_required = 5,
        result = "wind-turbine"
    },
    {
        type = "electric-energy-interface",
        name = "wind-turbine",
        icon = "__Better-Energy-production__/graphics/icon/wind-turbine.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        fast_replaceable_group = "turbine",
        next_upgrade = "advanced-wind-turbine",
        minable = {hardness = 0.2, mining_time = 0.5, result = "wind-turbine"},
        max_health = 75,
        place_result = "wind-turbine",
        corpse = "medium-remnants",
        collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
        selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
        drawing_box = {{-0.5, -3}, {3.2, 0.5}},
        energy_source =
        {
            type = "electric",
            buffer_capacity = "20kJ",
            usage_priority = "primary-output",
            output_flow_limit = "65kW",
            render_no_power_icon = false
        },
        energy_production = "65kW",
        animation =
            {
                filename = "__Better-Energy-production__/graphics/animation/wind-turbine.png",
                priority = "high",
                width = 250,
                height = 250,
                frame_count = 20,
                line_length = 5,
                shift = {2.15,-1.4},
                animation_speed = 0.5,
            },
        continuous_animation = true,
    }
}
)