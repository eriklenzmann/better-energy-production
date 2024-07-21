data:extend(
{
    {
        type = "recipe",
        name = "small-accumulator",
        enabled = false,
        ingredients =
        {
            {"iron-plate", 2},
            {"battery", 2}
        },
        energy_required = 1.5,
        result = "small-accumulator"
    },
    {
        type = "item",
        name = "small-accumulator",
        icon = "__Better-Energy-production__/graphics/icon/advanced-solar-panel.png",
        icon_size = 64, icon_mipmaps = 4,
        place_result = "small-accumulator",
        stack_size = "20",
        subgroup = "energy",
    },
    {
        type = "accumulator",
        name = "small-accumulator",
        icon = "__Better-Energy-production__/graphics/icon/advanced-solar-panel.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = { "placeable-neutral", "player-creation" },
        minable = { hardness = 1, mining_time = 1, result = "small-accumulator" },
        max_health = 100,
        corpse = "small-remnants",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        charge_cooldown = 20,
        discharge_cooldown = 40,
        energy_source = 
        {
            type = "electric",
            usage_priority = "tertiary",
            buffer_capacity = "2MJ",
            input_flow_limit = "150kW",
            output_flow_limit = "150kW",
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