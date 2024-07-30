data:extend(
{
    {
        type = "recipe",
        name = "flat-solar-panel",
        enabled = true,
        ingredients = 
        {
            {"copper-cable", 15},
            {"steel-plate", 5},
            {"small-twin-solar-panel", 1}
        },
        energy_required = 5,
        result = "flat-solar-panel"
    },
    {
        type = "item",
        name = "flat-solar-panel",
        icon = "__Better-Energy-production__/graphics/icon/flat-solar-panel.png",
        icon_size = 32,
        place_result = "flat-solar-panel",
        stack_size = 50,
        subgroup = "electric",
        order = "ab"
        --order = "d[small-twin-solar-panel]-a[flat-solar-panel]"
    },
    {
        type = "solar-panel",
        name = "flat-solar-panel",
        icon = "__Better-Energy-production__/graphics/icon/flat-solar-panel.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {hardness = 0.1, mining_time = 0.4, result = "flat-solar-panel"},
        max_health = 125,
        corpse = "small-remnants",
        collision_box = {{-0.6, -0.8}, {0.6, 0.8}},
        --collision_box = {{-1, -0.6}, {1, 0.6}},
        selection_box = {{-0.7, -0.9}, {0.7, 1.1}},
        energy_source =
        {
        type = "electric",
        usage_priority = "solar",
        },
        production = "40kW",
        picture = 
        {

            {
                filename = "__Better-Energy-production__/graphics/entity/flat-solar-panel/flat-solar-panel.png",
                priority = "high",
                width = 96,
                height = 96,
                shift = {0, 0.3}
            }

        }
        }
}
)