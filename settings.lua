data:extend({
    {
        type = "bool-setting",
        name = "dynamic-wind-speed",
        setting_type = "startup",
        default_value = false,
        order = "a",
        title = "Dynamic Wind Speed",
        description = "Enable dynamic wind speed that affects wind turbine power output. When enabled, wind speed changes every 5 seconds, causing power output to fluctuate between 75-100% of base output (with higher chance for 88-100%)."
    }
})