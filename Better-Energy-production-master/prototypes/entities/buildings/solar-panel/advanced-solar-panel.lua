data:extend(
{
    {
        type = "recipe",
        name = "advanced-solar-panel",
        enabled = false,
        ingredients = 
        {
            {"solar-panel", 1},
            {"advanced-circuit", 5},
            {"electronic-circuit", 10},
            {"copper-cable", 25}
        },
        energy_required = 15,
        result = "advanced-solar-panel"
    },
    {
        type = "item",
        name = "advanced-solar-panel",
        icon = "__Better-Energy-production__/graphics/icon/advanced-solar-panel.png",
        icon_size = 64, icon_mipmaps = 4,
        place_result = "advanced-solar-panel",
        stack_size = 50,
        subgroup = "energy",
        order = "d[steam-engine]-b[small-twin-solar-panel]-c[solar-panel]-d[advanced-solar-panel]-e[big-solar-panel]-f[csp-panel]"
    },
    {
        type = "solar-panel",
        name = "advanced-solar-panel",
        icon = "__Better-Energy-production__/graphics/icon/advanced-solar-panel.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "advanced-solar-panel"},
        max_health = 350,
        fast_replaceable_group = "solar-panel",
        corpse = "medium-remnants",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
            energy_source =
            {
            type = "electric",
            usage_priority = "solar",
            },
            production = "175kW",
            picture = 
            {
                layers = 
                {
                    {
                        filename = "__Better-Energy-production__/graphics/entity/advanced-solar-panel/advanced-solar-panel.png",
                        priority = "high",
                        width = 116,
                        height = 112,
                        shift = util.by_pixel(-3, 3),
                    }
                },
                    {

                        filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
                        priority = "high",
                        width = 112,
                        height = 90,
                        shift = util.by_pixel(10, 6),
                        draw_as_shadow = true,
                    }

            },
            overlay =
            {
                layers =
                {
                    {
                    filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow-overlay.png",
                    priority = "high",
                    width = 108,
                    height = 90,
                    shift = util.by_pixel(11, 6),
                    }
                }
            },
        }
}
)