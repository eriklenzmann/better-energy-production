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
        icon = "__Better-Energy-production__/graphics/icon/advanced-solar-panel.png",
        icon_size = 64, icon_mipmaps = 4,
        place_result = "advanced-accumulator",
        stack_size = "20",
        subgroup = "energy",
    },
    {
        type = "accumulator",
        name = "advanced-accumulator",
        icon = "__Better-Energy-production__/graphics/icon/advanced-solar-panel.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = { "placeable-neutral", "player-creation" },
        minable = { hardness = 1, mining_time = 2.5, result = "advanced-accumulator" },
        max_health = 300,
        corpse = "small-remnants",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        charge_cooldown = 40,
        discharge_cooldown = 80,
        energy_source = 
        {
            type = "electric",
            usage_priority = "tertiary",
            buffer_capacity = "11.5MJ",
            input_flow_limit = "700kW",
            output_flow_limit = "700kW",
        },
        picture =
        {
            filename = "__base__/graphics/entity/accumulator/hr-accumulator.png",
            priority = "high",
            width = 130,
            height = 189,
            shift = util.by_pixel(0, -0.343750),
        }
    }
}
)