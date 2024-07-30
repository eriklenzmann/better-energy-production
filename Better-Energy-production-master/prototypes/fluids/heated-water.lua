data:extend({
  {
    type = "fluid",
    name = "heated-water",
    default_temperature = 100,
    max_temperature = 125,
    fluid_temeprature = 125,
    heat_capacity = "1kJ",
    auto_barrel = false,
    base_color = { r = 172, g = 50, b = 60 },
    flow_color = { r = 172, g = 50, b = 60 },
    icon = "__Better-Energy-production__/graphics/fluids/heated-water.png",
    icon_size = 64,
    icon_mipmaps = 4,
    order = "a[fluid]-b[heated-water]",
  }
})
  