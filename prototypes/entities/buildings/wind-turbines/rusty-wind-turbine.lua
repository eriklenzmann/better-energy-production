require("prototypes.other.item-subgroups")

data:extend({
	{
	type = "item",
	name = "rusty-wind-turbine",
  icon = "__Better-Energy-production__/graphics/icon/rusty-wind-turbine.png",
  icon_size = 32,
	flags = {},
  subgroup = "b-e-p",		
  order = "ab",
	place_result = "rusty-wind-turbine",
	stack_size = 20,
	},

	{
    type = "recipe",
    name = "rusty-wind-turbine",
    energy_required = 3.5,
    enabled = true,
    ingredients =
    {
      {"iron-plate", 40},
      {"iron-gear-wheel", 10},
      {"copper-cable", 25},
      {"iron-stick", 10}
    },
    result = "rusty-wind-turbine"
  },

  {
    type = "electric-energy-interface",
    name = "rusty-wind-turbine",
    icon = "__Better-Energy-production__/graphics/icon/rusty-wind-turbine.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    fast_replaceable_group = "turbine",
    next_upgrade = "wind-turbine",
    minable = {hardness = 0.2, mining_time = 0.5, result = "rusty-wind-turbine"},
    max_health = 50,
    corpse = "medium-remnants",
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    drawing_box = {{-0.5, -3}, {3.2, 0.5}},
    energy_source =
    {
        type = "electric",
        usage_priority = "primary-output",
        input_flow_limit = "0kW",
        output_flow_limit = "36kW",
        buffer_capacity = "20kJ",
        render_no_power_icon = false
    },
    energy_production = "36kW",
    energy_usage = "0kW",
    animation =
    {
        filename = "__Better-Energy-production__/graphics/animation/rusty-wind-turbine.png",
        priority = "high",
        width = 175,
        height = 175,
        frame_count = 20,
        line_length = 5,
        shift = {1.65, -0.8},
        animation_speed = 0.5,
    },
    continuous_animation = true
  }
}
)
