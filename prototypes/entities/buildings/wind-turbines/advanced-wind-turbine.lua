require("prototypes.other.item-subgroups")

data:extend(
{
    {
        type = "item",
        name = "advanced-wind-turbine",
        icon = "__Better-Energy-production__/graphics/icon/advanced-wind-turbine.png",
        icon_size = 32,
        stack_size = 100,
        place_result = "advanced-wind-turbine",
        subgroup = "turbine",
        order = "ag"
    },
    {
        type = "recipe",
        name = "advanced-wind-turbine",
        enabled = false,
        ingredients = 
        {
            {"wind-turbine", 1},
            {"electronic-circuit", 30},
            {"advanced-circuit", 15},
            {"steel-plate", 20}
        },
        energy_required = 5,
        result = "advanced-wind-turbine"
    },
    {
        type = "electric-energy-interface",
        name = "advanced-wind-turbine",
        icon = "__Better-Energy-production__/graphics/icon/advanced-wind-turbine.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        fast_replaceable_group = "turbine",
        minable = {hardness = 0.2, mining_time = 1, result = "advanced-wind-turbine"},
        max_health = 100,
        place_result = "advanced-wind-turbine",
        corpse = "medium-remnants",
        collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
        selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
        drawing_box = {{-0.5, -3}, {3.2, 0.5}},
            energy_source =
            {
                type = "electric",
                buffer_capacity = "20kJ",
                usage_priority = "primary-output",
                output_flow_limit = "160kW",
                render_no_power_icon = false,
            },
        energy_production = "160kW",
        animation =
        {
            filename = "__Better-Energy-production__/graphics/animation/advanced-wind-turbine.png",
            priority = "high",
            width = 250,
            height = 250,
            frame_count = 20,
            line_length = 5,
            shift = {2.5, -1.65},
            animation_speed = 0.5,
        },
        continuous_animation = true,
        }
}
)

