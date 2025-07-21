data:extend(
{
    {
        type = "technology",
        name = "wind-turbines2-2",
        icon = "__Better-Energy-production__/graphics/technology/wind-turbine.png",
        icon_size = 256,
        icon_mipmaps = 4,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "wind-turbine"
            }
        },
        prerequisites = {"electronics", "logistic-science-pack"},
        unit = {count=100, ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1}}, time=30}
    },
    {
        type = "technology",
        name = "wind-turbines3-3",
        icon = "__Better-Energy-production__/graphics/technology/advanced-wind-turbine.png",
        icon_size = 256,
        icon_mipmaps = 4,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "advanced-wind-turbine"
            }
        },
        prerequisites = {"wind-turbines2-2"},
        unit = {count=150, ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1}}, time=40}
    },
    {
        type = "technology",
        name = "wind-turbines4-4",
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
        prerequisites = {"wind-turbines3-3"},
        unit = {count=225, ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1}}, time=45}
    },
    {
        type = "technology",
        name = "wind-turbines5-5",
        icon = "__Better-Energy-production__/graphics/technology/big-wind-turbine.png",
        icon_size = 256,
        icon_mipmaps = 4,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "big-wind-turbine"
            }
        },
        prerequisites = {"wind-turbines4-4", "electric-engine"},
        unit = {count=350, ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1}}, time=60}
    }
}
)