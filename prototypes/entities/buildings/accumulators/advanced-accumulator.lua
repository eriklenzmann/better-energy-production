function advanced_accumulator_picture(tint, repeat_count)
    return
    {
      layers =
      {
        {
            filename = "__Better-Energy-production__/graphics/entity/accumulator/advanced-accumulator.png",
            priority = "high",
            width = 91,
            height = 132,
            repeat_count = repeat_count,
            --shift = util.by_pixel(0, -12),
            tint = tint,
        },
        {
            filename = "__Better-Energy-production__/graphics/entity/accumulator/advanced-accumulator-shadow.png",
            priority = "high",
            width = 164,
            height = 74,
            repeat_count = repeat_count,
            shift = util.by_pixel(40, 25),
            draw_as_shadow = true,
        }
      }
    }
  end

function advanced_accumulator_charge()
    return
    {
      layers =
      {
        advanced_accumulator_picture({ r=1, g=1, b=1, a=1 } , 24),
        {
          filename = "__base__/graphics/entity/accumulator/hr-accumulator-charge.png",
          priority = "high",
          scale = 0.7,
          width = 178,
          height = 206,
          line_length = 6,
          frame_count = 24,
          draw_as_glow = true,
          shift = util.by_pixel(0, -18),
        }
      }
    }
    end

function advanced_accumulator_discharge()
    return
    {
      layers =
      {
        advanced_accumulator_picture({ r=1, g=1, b=1, a=1 } , 24),
        {
          filename = "__base__/graphics/entity/accumulator/hr-accumulator-discharge.png",
          priority = "high",
          scale = 0.75,
          width = 170,
          height = 210,
          line_length = 6,
          frame_count = 24,
          draw_as_glow = true,
          shift = util.by_pixel(-1, -20),
        }
      }
    }
    end
  
data:extend(
{
    {
        type = "recipe",
        name = "advanced-accumulator",
        enabled = false,
        ingredients =
        {
            {"accumulator", 2},
            {"battery", 4},
            {"iron-plate", 20}
        },
        energy_required = 6,
        result = "advanced-accumulator"
    },
    {
        type = "item",
        name = "advanced-accumulator",
        icon = "__base__/graphics/icons/accumulator.png",
        icon_size = 64,
        icon_mipmaps = 4,
        place_result = "advanced-accumulator",
        stack_size = "20",
        subgroup = "electric",
        order = "aj"
    },
    {
        type = "accumulator",
        name = "advanced-accumulator",
        icon = "__Better-Energy-production__/graphics/icon/advanced-solar-panel.png",
        icon_size = 64,
            icon_mipmaps = 4,
        flags = { "placeable-neutral", "player-creation" },
        minable = { hardness = 1, mining_time = 2.5, result = "advanced-accumulator" },
        max_health = 300,
        corpse = "small-remnants",
        --collision_box = {{-1.3, -1.8}, {1.3, 1.5}},
        --selection_box = {{-1.3, -1.8}, {1.3, 1.5}},
        --drawing_box = {{-1.4, -1.4}, {1.4, 1.5}},
        charge_cooldown = 40,
        discharge_cooldown = 80,
        energy_source = 
        {
            type = "electric",
            usage_priority = "tertiary",
            buffer_capacity = "11.5MJ",
            input_flow_limit = "600kW",
            output_flow_limit = "600kW",
        },
        picture = advanced_accumulator_picture(),
        charge_animation = advanced_accumulator_charge(),
        discharge_animation = advanced_accumulator_discharge(),
    }
}
)