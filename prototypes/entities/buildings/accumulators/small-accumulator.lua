data:extend(
{
    {
        type = "recipe",
        name = "small-accumulator",
        enabled = true, --change
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
        icon = "__base__/graphics/icons/accumulator.png",
        icon_size = 64, icon_mipmaps = 4,
        place_result = "small-accumulator",
        stack_size = "20",
        subgroup = "electric",
        order = "ah"
    },
    {
        type = "accumulator",
        name = "small-accumulator",
        icon = "__base__/graphics/icons/accumulator.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = { "placeable-neutral", "player-creation" },
        minable = { hardness = 1, mining_time = 1, result = "small-accumulator" },
        max_health = 100,
        corpse = "small-remnants",
        collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
        selection_box = {{-0.8, -0.7}, {0.8, 0.9}}, --first one decrement by .5 for smaller hitbox
        charge_cooldown = 20,
        discharge_cooldown = 40,
        energy_source = 
        {
            type = "electric",
            usage_priority = "tertiary",
            buffer_capacity = "2MJ",
            input_flow_limit = "125kW",
            output_flow_limit = "125kW",
        },
        picture =
        {
            filename = "__Better-Energy-production__/graphics/entity/accumulator/small-accumulator.png",
            priority = "high",
            width = 50,
            height = 71,
        }
    }
}
)