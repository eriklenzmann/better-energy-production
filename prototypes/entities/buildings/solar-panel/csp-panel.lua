function pipetoground()
    return
    {
      north =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-up.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            shift = util.by_pixel(0, 9),
            hr_version =
            {
              filename = "__base__/graphics/entity/pipe-to-ground/hr-pipe-to-ground-up.png",
              priority = "extra-high",
              width = 128,
              height = 128,
              shift = util.by_pixel(0, 18),
              scale = 0.5
            }
          }
        }
      },
      east =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-right.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            shift = util.by_pixel(-9, 0),
            hr_version =
            {
              filename = "__base__/graphics/entity/pipe-to-ground/hr-pipe-to-ground-right.png",
              priority = "extra-high",
              width = 128,
              height = 128,
              shift = util.by_pixel(-18, 0),
              scale = 0.5
            }
          }
        }
      },
      south =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-down.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            shift = util.by_pixel(0, -9),
            hr_version =
            {
              filename = "__base__/graphics/entity/pipe-to-ground/hr-pipe-to-ground-down.png",
              priority = "extra-high",
              width = 128,
              height = 128,
              shift = util.by_pixel(0, -18),
              scale = 0.5
            }
          }
        }
      },
      west =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-left.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            shift = util.by_pixel(-9, 0),
            hr_version =
            {
              filename = "__base__/graphics/entity/pipe-to-ground/hr-pipe-to-ground-left.png",
              priority = "extra-high",
              width = 128,
              height = 128,
              shift = util.by_pixel(18, 0),
              scale = 0.5
            }
          }
        }
      }
    }
  end
--make file for functions

data:extend(
{
    {
        type = "recipe",
        name = "csp-panel",
        enabled = false,
        ingredients =
        {
            {"advanced-solar-panel", 1},
            {"pipe", 4},
            {"pipe-to-ground", 2},
            {"copper-cable", 40},
            {"advanced-circuit", 10},
            {"electronic-circuit", 20}
        },
        energy_required = 35,
        result = "csp-panel"
    },
    {
        type = "item",
        name = "csp-panel",
        icon = "__Better-Energy-production__/graphics/icon/csp-panel.png",
        icon_size = 64,
        icon_mipmaps = 4,
        place_result = "csp-panel",
        stack_size = 10,
        subgroup = "energy",
        order = "d[steam-engine]-b[small-twin-solar-panel]-c[solar-panel]-d[advanced-solar-panel]-e[big-solar-panel]-f[csp-panel]"
    },
    {
        type = "assembling-machine",
        name = "csp-panel",
        crafting_categories = {"bep-fluids"},
        icon = "__Better-Energy-production__/graphics/icon/csp-panel.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation", "not-rotatable", "no-copy-paste"}, --"not-rotatable" is temporary -> until own texture // 0.3.0
        minable = {hardness = 0.9, mining_time = 0.9, result = "csp-panel"},
        max_health = 325,
        corpse = "medium-remnants",
        collision_box = {{-1.5, -1.5}, {1.5, 1.5}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        drawing_box = {{-1.6, -1.6}, {1.6, 1.6}},
        fixed_recipe = "heated-water",
        animation = --bruh
        {
          layers = 
          {
              {
                  filename = "__Better-Energy-production__/graphics/entity/csp-panel/csp-panel.png",
                  priority = "high",
                  width = 116,
                  height = 112,
                  shift = util.by_pixel(-3, 3),
                  scale = 0.9
              }
          }
        },
        energy_source = {
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "15kW",
        module_specification = { module_slots = 2 },
        allowed_effects = { "consumption", "speed" },
        crafting_speed = 1,
        fluid_boxes = 
        {
            {
                production_type = "input",
                pipe_picture = pipetoground(),
                --pipe_covers = pipecoverspictures(),   [OWN]
                base_area = 50,
                base_level = 0,
                pipe_connections = { { type = "input", position = {1, -1.6} } }
            },
            {
                production_type = "output",
                pipe_picture = pipetoground(),
                --pipe_covers = pipecoverspictures(),   [OWN]
                base_area = 50,
                base_level = 0,
                pipe_connections = { { type = "output", position = {1.6, 1} } },
            },
            --off_when_no_fluid_recipe = false   nah
        },
    }
}
)