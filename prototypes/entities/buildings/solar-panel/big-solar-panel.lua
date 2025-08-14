data:extend(
{
    {
        type = "recipe",
        name = "big-solar-panel",
        enabled = false,
        ingredients = 
        {
            {type = "item", name = "solar-panel", amount = 2},
            {type = "item", name = "advanced-circuit", amount = 10},
            {type = "item", name = "electronic-circuit", amount = 20},
            {type = "item", name = "copper-cable", amount = 30}
        },
        energy_required = 25,
        results = {
            {type = "item", name = "big-solar-panel", amount = 1}
        }
    },
    {
        type = "item",
        name = "big-solar-panel",
        icon = "__Better-Energy-production__/graphics/icon/big-solar-panel.png",
        icon_size = 64, icon_mipmaps = 4,
        place_result = "big-solar-panel",
        stack_size = 25,
        subgroup = "energy",
        order = "d[steam-engine]-b[small-twin-solar-panel]-c[solar-panel]-d[advanced-solar-panel]-e[big-solar-panel]-f[csp-panel]"
    },
    {
        type = "solar-panel",
        name = "big-solar-panel",
        icon = "__Better-Energy-production__/graphics/icon/big-solar-panel.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "big-solar-panel"},
        max_health = 475,
        corpse = "medium-remnants",
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
            energy_source =
            {
            type = "electric",
            usage_priority = "solar",
            },
            production = "650kW",
            energy_usage = "0kW",
            picture = 
            {
                {
                    filename = "__Better-Energy-production__/graphics/entity/big-solar-panel/big-solar-panel.png",
                    priority = "high",
                    width = 169,
                    height = 169,
                    scale = 1.0
                }
            }
            }
}
)

