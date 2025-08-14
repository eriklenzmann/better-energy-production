data:extend(
{
    {
        type = "recipe",
        name = "smart-solar-panel",
        enabled = false,
        ingredients = 
        {
            {type = "item", name = "advanced-solar-panel", amount = 2},
            {type = "item", name = "iron-gear-wheel", amount = 25},
            {type = "item", name = "advanced-circuit", amount = 100},
            {type = "item", name = "copper-cable", amount = 25}
        },
        energy_required = 50,
        results = {
            {type = "item", name = "smart-solar-panel", amount = 1}
        }
    },
    {
        type = "item",
        name = "smart-solar-panel",
        icon = "__Better-Energy-production__/graphics/icon/smart-solar-panel.png",
        icon_size = 32,
        place_result = "smart-solar-panel",
        stack_size = 25,
        subgroup = "energy",
        order = "d[steam-engine]-b[small-twin-solar-panel]-c[solar-panel]-d[advanced-solar-panel]-e[smart-solar-panel]-f[csp-panel]"
    },
    {
        type = "solar-panel",
        name = "smart-solar-panel",
        icon = "__Better-Energy-production__/graphics/icon/smart-solar-panel.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {hardness = 0.2, mining_time = 1, result = "smart-solar-panel"},
        max_health = 650,
        corpse = "medium-remnants",
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        energy_source =
        {
        type = "electric",
        usage_priority = "solar",
        },
        production = "1.1MW",
        picture = 
        {
            {
                filename = "__Better-Energy-production__/graphics/entity/smart-solar-panel/smart-solar-panel.png",
                priority = "high",
                width = 350,
                height = 350,
                scale = 1.0
            }
        }
    }

}
)

