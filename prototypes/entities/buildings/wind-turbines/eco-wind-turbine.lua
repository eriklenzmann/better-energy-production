require("prototypes.item-subgroups")
require("prototypes.entities.items.air-filter")

data:extend(
{
    {
        type = "recipe",
        name = "eco-wind-turbine",
        enabled = false,
        ingredients = 
        {
            {type = "item", name = "wind-turbine", amount = 1},
            {type = "item", name = "advanced-circuit", amount = 25},
            {type = "item", name = "electric-engine-unit", amount = 2},
            {type = "item", name = "electronic-circuit", amount = 10},
            {type = "item", name = "air-filter-bep", amount = 1}
        },
        energy_required = 5,
        results = {
            {type = "item", name = "eco-wind-turbine", amount = 1}
        }
    },
    {
        type = "item",
        name = "eco-wind-turbine",
        icon = "__Better-Energy-production__/graphics/icon/eco-wind-turbine.png",
        icon_size = 32,
        place_result = "eco-wind-turbine",
        stack_size = 100,
        subgroup = "b-e-p",
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
        input_flow_limit = "0kW",
        output_flow_limit = "107kW",
        render_no_power_icon = false,
        emissions_per_seconds = -0,08333333333
        },
        energy_production = "107kW",
        energy_usage = "0kW",
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