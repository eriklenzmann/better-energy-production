data:extend({
{
    type = "recipe",
    name = "water-distillation",
    category = "chemistry",
    icon = "__Better-Energy-production__/graphics/icon/heated-water.png",
    icon_size = 64,
    icon_mipmaps = 4,
    enabled = false,
    energy_required = 6.25,
    ingredients = 
    {
        { type = "fluid", name = "heated-water", amount = 150 },
    },
    results = 
    {
        { type = "fluid", name = "steam", amount = 350, temperature = 165},
        { type = "fluid", name = "water", amount = 25 }
    },
    subgroup = "fluid-recipes"
    --order = ""
},
{
    type = "recipe",
    name = "heated-water",
    category = "bep-fluids",
    icon = "__Better-Energy-production__/graphics/fluids/heated-water.png",
    icon_size = 64,
    icon_mipmaps = 4,
    enabled = false,
    energy_required = 6.5,
    ingredients = {
        { type = "fluid", name = "water", amount = 55 },
    },
    results = {
        { type = "fluid", name = "heated-water", amount = 50 }
    },
    subgroup = "fluid-recipes",
    order = "a[lubricant]-b[heated-water]"
}
})