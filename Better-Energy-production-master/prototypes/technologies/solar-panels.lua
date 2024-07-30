data:extend(
{
    {
        type = "technology",
        name = "advanced-solar-energy",
        icon = "__Better-Energy-production__/graphics/technology/advanced-solar-energy.png",
        icon_size = 256, icon_mipmaps = 4,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "advanced-solar-panel"
            },
            {
                type = "unlock-recipe",
                recipe = "big-solar-panel"
            }
        },
        prerequisites = {"solar-energy", "chemical-science-pack"},
        unit = {count=250, ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1}}, time=35}
    },
    {
        type = "technology",
        name = "csp-energy",
        icon = "__Better-Energy-production__/graphics/technology/csp-energy.png",
        icon_size = 256,
        icon_mipmaps = 4,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "csp-panel"
            },
            {
                type = "unlock-recipe",
                recipe = "heated-water"
            },
            {
                type = "unlock-recipe",
                recipe = "water-distillation"
            }
        },
        prerequisites = {"advanced-solar-energy"},
        unit = {count=275, ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1},{"production-science-pack", 1}}, time=45}
    },
    {
        type = "technology",
        name = "smart-energy",
        icon = "__Better-Energy-production__/graphics/technology/smart-energy.png",
        icon_size = 256,
        icon_mipmaps = 4,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "smart-solar-panel"
            },
            {
                type = "unlock-recipe",
                recipe = "advanced-accumulator"
            }
        },
        prerequisites = {"csp-energy"},
        unit = {count=325, ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"production-science-pack", 1}}, time=45}
    }
}
)