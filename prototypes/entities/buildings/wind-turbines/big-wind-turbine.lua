require("prototypes.other.item-subgroups")

data:extend({
	{
	type = "item",
	name = "big-wind-turbine",
  icon = "__Better-Energy-production__/graphics/icon/big-wind-turbine.png",
  icon_size = 32,
	flags = {},
  subgroup = "b-e-p",		
  order = "aj",
	place_result = "big-wind-turbine",
	stack_size = 20,
	},

	{
    type = "recipe",
    name = "big-wind-turbine",
    energy_required = 60,
    enabled = false,
    ingredients =
    {
      {"electric-engine-unit", 10},
      {"steel-plate", 100},
      {"iron-stick", 50},
      {"copper-cable", 100},
      {"iron-gear-wheel", 50},
      {"advanced-circuit", 50},
      {"processing-unit", 20}
    },
    result = "big-wind-turbine"
  },

  {
    type = "electric-energy-interface",
    name = "big-wind-turbine",
    icon = "__Better-Energy-production__/graphics/icon/big-wind-turbine.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    fast_replaceable_group = "turbine",
    minable = {hardness = 1, mining_time = 0.5, result = "big-wind-turbine"},
    max_health = 850,
    corpse = "medium-remnants",
    collision_box = {{-1.3, -1.1}, {1.3, 1.1}},
    selection_box = {{-1.4, -1.2}, {1.4, 1.2}},
    drawing_box = {{0, -4.5}, {0, 0.5}},
    energy_source =
    {
        type = "electric",
        buffer_capacity = "1.1MW",
        usage_priority = "primary-output",
        input_flow_limit = "0kW",
        output_flow_limit = "1.1MW",
        render_no_power_icon = false
    },
    energy_production = "1.1MW",
    energy_usage = "0kW",
    animation =
    {
        filename = "__Better-Energy-production__/graphics/animation/big-wind-turbine.png",
        priority = "high",
        width = 350,
        height = 350,
        frame_count = 20,
        line_length = 5,
        shift = {2.75, -1.85},
        animation_speed = 0.5,
    },
    continuous_animation = true
  }
}
)
