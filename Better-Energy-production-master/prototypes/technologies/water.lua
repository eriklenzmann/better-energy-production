data:extend(
{
    {
        type = "technology",
        name = "wave-power-plant",
        icon = "__Better-Energy-production__/graphics/technology/wave-power-plant.png",
        icon_size = 256,
        icon_mipmaps = 4,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "wave-power-plant"
            }
        },
        prerequisites = {"electric-engine", "advanced-electronics", "wind-turbines2-2"},
        unit = {count=175, ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1}}, time=45}
    }
}
)