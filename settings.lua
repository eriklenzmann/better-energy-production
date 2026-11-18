data:extend({
    {
        type = "bool-setting",
        name = "dynamic-wind-speed",
        setting_type = "startup",
        default_value = false,
        order = "a",
        title = "Dynamic Wind and Wave Power",
        description = "Enable dynamic wind and wave speed affecting power output. When enabled, wind speed fluctuates between 20-100% of base output (with calm lulls and peak gusts), while wave power plants fluctuate at half volatility (60-100%)."
    }
})