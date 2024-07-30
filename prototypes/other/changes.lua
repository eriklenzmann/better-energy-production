-- Making the base solar panel upgradable to the advanced version
data.raw["item"]["solar-panel"].subgroup = "electric"
data.raw["item"]["solar-panel"].order = "ac"
data.raw["solar-panel"]["solar-panel"].fast_replaceable_group = "solar-panel"
data.raw["solar-panel"]["solar-panel"].next_upgrade = "advanced-solar-panel"

data.raw["item"]["accumulator"].subgroup = "electric"
data.raw["item"]["accumulator"].order = "ai"

data.raw["recipe"]["repair-pack"].subgroup = "tools"