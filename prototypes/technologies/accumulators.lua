data:extend(
{
    {
        type = "technology",
        name = "advanced-accumulators",
        icon = "__Better-Energy-production__/graphics/technology/advanced-accumulator.png",
        icon_size = 256,
        icon_mipmaps = 4,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "advanced-accumulator"
            }
        },
        prerequisites = {"electric-energy-accumulators"},
        unit = {
            count = 225,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 30
        }
    }
}
)