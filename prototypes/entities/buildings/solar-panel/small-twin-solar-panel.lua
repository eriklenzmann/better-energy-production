data:extend(
{
    {
        type = "recipe",
        name = "small-twin-solar-panel",
        enabled = true,
        ingredients = 
        {
            {"copper-plate", 5},
            {"copper-cable", 10},
            {"iron-plate", 10}
        },
        energy_required = 5,
        result = "small-twin-solar-panel"
    },
    {
        type = "item",
        name = "small-twin-solar-panel",
        icon = "__Better-Energy-production__/graphics/icon/small-twin-solar-panel.png",
        icon_size = 32,
        place_result = "small-twin-solar-panel",
        stack_size = 100,
        subgroup = "electric",
        order = "aa"
        --order = "d[boiler]-a[small-twin-solar-panel]"
    },
    {
        type = "solar-panel",
        name = "small-twin-solar-panel",
        icon = "__Better-Energy-production__/graphics/icon/small-twin-solar-panel.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {hardness = 0.1, mining_time = 0.3, result = "small-twin-solar-panel"},
        max_health = 125,
        corpse = "small-remnants",
        collision_box = {{-0.8, -0.4}, {0.8, 0.4}},
        --collision_box = {{-1, -0.6}, {1, 0.6}},
        selection_box = {{-1.1, -0.7}, {1.1, 0.7}},
        energy_source =
        {
        type = "electric",
        usage_priority = "solar",
        },
        production = "16kW",
        picture = 
        {

            {
                filename = "__Better-Energy-production__/graphics/entity/small-twin-solar-panel/small-twin-solar-panel.png",
                priority = "high",
                width = 64,
                height = 64,
                --shift = util.by_pixel(-3, 3),
            }
        }
    }
}
)