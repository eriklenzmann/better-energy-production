require("prototypes.item-subgroups")

data:extend(
{
    {
        type = "recipe",
        name = "air-filter-bep",
        enabled = false,
        ingredients = 
        {
            {type = "item", name = "coal", amount = 3},
            {type = "item", name = "copper-plate", amount = 5},
            {type = "item", name = "iron-plate", amount = 5},
            {type = "item", name = "copper-cable", amount = 3}
        },
        energy_required = 5,
        results = {
            {type = "item", name = "air-filter-bep", amount = 1}
        }
    },
    {
        type = "item",
        name = "air-filter-bep",
        icon = "__Better-Energy-production__/graphics/icon/air-filter.png",
        icon_size = 32,
        stack_size = 5,
        subgroup = "intermediate-product",
        order = "j"
    }   
}
)