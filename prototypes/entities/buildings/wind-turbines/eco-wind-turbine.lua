require("prototypes.other.item-subgroups")
require("prototypes.items.air-filter")

data:extend(
{
    {
        type = "recipe",
        name = "eco-wind-turbine",
        enabled = false,
        ingredients = 
        {
            {"advanced-wind-turbine", 1},
            {"advanced-circuit", 25},
            {"electric-engine-unit", 2},
            {"electronic-circuit", 30},
            {"air-filter", 1}
        },
        energy_required = 5,
        result = "eco-wind-turbine"
    },
    {
        type = "item",
        name = "eco-wind-turbine",
        icon = "__Better-Energy-production__/graphics/icon/eco-wind-turbine.png",
        icon_size = 32,
        place_result = "eco-wind-turbine",
        stack_size = 100,
        subgroup = "turbine",
        order = "ai"
    },
    {
        type = "electric-energy-interface",
        name = "eco-wind-turbine",
        icon = "__Better-Energy-production__/graphics/icon/eco-wind-turbine.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "eco-wind-turbine"},
        max_health = 100,
        corpse = "medium-remnants",
        collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
        selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
        drawing_box = {{-0.5, -3}, {3.2, 0.5}},
            energy_source =
            {
                type = "electric",
                buffer_capacity = "20kJ",
                usage_priority = "secondary-output",
                output_flow_limit = settings.startup["eco-wind-turbine-production"].value .. "kW",
                render_no_power_icon = false,
                emissions_per_minute = -5
            },
            energy_production = settings.startup["eco-wind-turbine-production"].value .. "kW",
            animation =
            {
                filename = "__Better-Energy-production__/graphics/animation/eco-wind-turbine.png",
                priority = "high",
                width = 175,
                height = 175,
                frame_count = 20,
                line_length = 5,
                shift = {0, -0.7},
                animation_speed = 0.5,
            },
            continuous_animation = true,
            }
}
)