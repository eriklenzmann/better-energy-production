-- Making the abse solar panel upgradable to the advanced version
data.raw["solar-panel"]["solar-panel"].fast_replaceable_group = "solar-panel"
data.raw["solar-panel"]["solar-panel"].next_upgrade = "advanced-solar-panel"

-- Making the small accumulator also be unlocked with researching the base accumulator
data.raw.technology["electric-energy-accumulators"].effects = {{ type = "unlock-recipe", recipe = "accumulator" }, { type = "unlock-recipe", recipe = "small-accumulator"}}