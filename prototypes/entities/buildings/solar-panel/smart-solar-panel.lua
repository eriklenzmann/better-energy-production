data:extend(
{
    {
        type = "recipe",
        name = "smart-solar-panel",
        enabled = false,
        ingredients = 
        {
            {"advanced-solar-panel", 2},
            {"iron-gear-wheel", 25},
            {"advanced-circuit", 75},
            {"processing-unit", 25},
            {"copper-cable", 50}
        },
        energy_required = 50,
        result = "smart-solar-panel"
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

