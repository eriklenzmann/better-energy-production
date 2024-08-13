data:extend{
    {
       name = "ssp-animation",
       type = "animation",
       filename = "__Better-Energy-production__/graphics/animation/smart-solar-panel.png",
       priority = "high",
       width = 350,
       height = 350,
       frame_count = 64,
       line_length = 8,
       animation_speed = 0.3,
   },
   {
    type = "solar-panel",
    name = "smart-solar-panel-second",
    icon = "__Better-Energy-production__/graphics/icon/smart-solar-panel.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 1, result = "smart-solar-panel"},
    placeable_by = {item = "smart-solar-panel", count = "25" },
    radius_visualisation_specification =
    {
        picture =
        {
            filename = "__Better-Energy-production__/graphics/entity/smart-solar-panel/smart-solar-panel.png",
            priority = "high",
            width = 350,
            height = 350,
            scale = 1.0 
        }
    },
    max_health = 650,
    corpse = "medium-remnants",
    collision_box = {{-3.3, -1.6}, {3.3, 1.6}},
    selection_box = {{-3.4, -2.1}, {3.4, 2.1}},
    energy_source =
    {
    type = "electric",
    usage_priority = "solar",
    },
    production = "1.1MW",
    picture = 
    {
        {
            filename = "__Better-Energy-production__/graphics/entity/smart-solar-panel/smart-solar-panel-plain.png",
            priority = "low",
            width = 350,
            height = 350,
            scale = 1.0
        }
    }
},
}

se_procedural_tech_exclusions = se_procedural_tech_exclusions or {}
table.insert(se_procedural_tech_exclusions, "wind-turbines")
table.insert(se_procedural_tech_exclusions, "solar-panels")
--table.insert(se_procedural_tech_exclusions, "turbine")



--Wind turbines--
require("prototypes.entities.buildings.wind-turbines.rusty-wind-turbine")
require("prototypes.entities.buildings.wind-turbines.wind-turbine")
require("prototypes.entities.buildings.wind-turbines.advanced-wind-turbine")
require("prototypes.entities.buildings.wind-turbines.eco-wind-turbine")
require("prototypes.entities.buildings.wind-turbines.big-wind-turbine")

--Solar panel--
require("prototypes.entities.buildings.solar-panel.flat-solar-panel")
require("prototypes.entities.buildings.solar-panel.small-twin-solar-panel")
require("prototypes.entities.buildings.solar-panel.advanced-solar-panel")
require("prototypes.entities.buildings.solar-panel.big-solar-panel")
require("prototypes.entities.buildings.solar-panel.csp-panel")
require("prototypes.entities.buildings.solar-panel.smart-solar-panel")

--Wave power plant--
require("prototypes.entities.buildings.wave-power-plant.wave-power-plant")

--Accumulators--
require("prototypes.entities.buildings.accumulators.small-accumulator")
require("prototypes.entities.buildings.accumulators.advanced-accumulator")

--Fluids--
require("prototypes.fluids.heated-water")
require("prototypes.fluids.fluid-recipes")

--Items--
require("prototypes.items.air-filter")

--Other--
require("prototypes.other.changes")
require("prototypes.other.recipe-categories")
require("prototypes.technologies.wind-turbines")
require("prototypes.technologies.solar-panels")
require("prototypes.technologies.water")
require("prototypes.technologies.accumulators")