require("prototypes.other.item-subgroups")

data:extend(
{
    {
        type = "recipe",
        name = "air-filter",
        enabled = false,
        ingredients = 
        {
            {"coal", 3},
            {"copper-plate", 5},
            {"iron-plate", 5},
            {"copper-cable", 3}
        },
        energy_required = 5,
        result = "air-filter"
    },
    {
        type = "item",
        name = "air-filter",
        icon = "__Better-Energy-production__/graphics/icon/air-filter.png",
        icon_size = 32,
        stack_size = 5,
        subgroup = "intermediate-product",
        order = "j"
    }   
}
)