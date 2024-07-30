data:extend(
{
    {
        type = "technology",
        name = "wind-turbine",
        icon = "__Better-Energy-production__/graphics/technology/wind-turbine.png",
        icon_size = 256,
        icon_mipmaps = 4,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "wind-turbine"
            }
        },
        prerequisites = {"electronics", "logistic-science-pack", "engine"},
        --engine unit bcz of bug
        unit = {count=100, ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1}}, time=30}
    },
    {
        type = "technology",
        name = "advanced-wind-turbine",
        icon = "__Better-Energy-production__/graphics/technology/advanced-wind-turbine.png",
        icon_size = 256,
        icon_mipmaps = 4,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "advanced-wind-turbine"
            }
        },
        prerequisites = {"wind-turbine"},
        unit = {count=150, ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1}}, time=40}
    },
    {
        type = "technology",
        name = "eco-wind-turbine",
        icon = "__Better-Energy-production__/graphics/technology/eco-wind-turbine.png",
        icon_size = 256,
        icon_mipmaps = 4,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "eco-wind-turbine"
            },
            {
                type = "unlock-recipe",
                recipe = "air-filter"
            }
        },
        prerequisites = {"advanced-wind-turbine"},
        unit = {count=225, ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1}}, time=45}
    },
    {
        type = "technology",
        name = "big-wind-turbine",
        icon = "__Better-Energy-production__/graphics/technology/big-wind-turbine.png",
        icon_size = 256,
        icon_mipmaps = 4,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "big-wind-turbine"
            }
        },
        prerequisites = {"eco-wind-turbine", "electric-engine"},
        unit = {count=350, ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1}}, time=60}
    }
}
)