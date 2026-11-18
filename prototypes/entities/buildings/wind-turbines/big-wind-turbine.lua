require("prototypes.item-subgroups")

data:extend({
  -- Item and Recipe remain the same
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
    energy_required = 75,
    enabled = false,
    ingredients = {
      {type = "item", name = "electric-engine-unit", amount = 10},
      {type = "item", name = "steel-plate", amount = 100},
      {type = "item", name = "iron-stick", amount = 50},
      {type = "item", name = "copper-cable", amount = 50},
      {type = "item", name = "iron-gear-wheel", amount = 50},
      {type = "item", name = "advanced-circuit", amount = 30}
    },
    results = {{type = "item", name = "big-wind-turbine", amount = 1}}
  },

  -- The modified Turbine Entity
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
    
    -- ADDED: Collision mask to interact with the kr_wind_turbine layer
    collision_mask = {
      layers = { item = true, object = true, player = true, water_tile = true, kr_wind_turbine = true }
    },

    -- ADDED: Visual radius using Krastorio 2 assets
    radius_visualisation_specification = {
      sprite = {
        filename = "__Krastorio2Assets__/buildings/wind-turbine/wind-turbine-radius-visualisation.png",
        width = 12,
        height = 12,
      },
      distance = 8, -- 8 tiles radius = 16x16 zone
    },

    drawing_box = {{0, -4.5}, {0, 0.5}},
    energy_source = {
        type = "electric",
        buffer_capacity = "1100kJ",
        usage_priority = "primary-output",
        input_flow_limit = "0kW",
        output_flow_limit = "1.1MW",
        render_no_power_icon = false
    },
    energy_production = "1.1MW",
    energy_usage = "0kW",
    animation = {
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
  },

  -- NEW: The hidden 16x16 collision entity
  {
    type = "simple-entity",
    name = "big-wind-turbine-collision",
    localised_name = {"entity-name.big-wind-turbine"},
    icon = "__Better-Energy-production__/graphics/icon/big-wind-turbine.png",
    icon_size = 32,
    hidden = true,
    collision_mask = {layers = {kr_wind_turbine = true}},
    collision_box = {{-8, -8}, {8, 8}}, -- 16x16 area
    picture = {filename = "__core__/graphics/empty.png", size = 1},
    flags = {"not-on-map", "not-selectable-in-game", "placeable-off-grid"},
  }
})