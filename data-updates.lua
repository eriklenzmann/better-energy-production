-- Custom recipe for K2:

if mods["space-age"] ~= nil then
  data.raw["electric-energy-interface"]["rusty-wind-turbine"].surface_conditions = {{ property = "pressure", min = 1 }}
  data.raw["electric-energy-interface"]["wind-turbine"].surface_conditions = {{ property = "pressure", min = 1 }}
  data.raw["electric-energy-interface"]["advanced-wind-turbine"].surface_conditions = {{ property = "pressure", min = 1 }}
  data.raw["electric-energy-interface"]["eco-wind-turbine"].surface_conditions = {{ property = "pressure", min = 1 }}
  data.raw["electric-energy-interface"]["big-wind-turbine"].surface_conditions = {{ property = "pressure", min = 1 }}
  data.raw["electric-energy-interface"]["wave-power-plant"].collision_mask = {layers = {ground_tile=true, train=true, car=true, is_object=true, lava_tile=true}}
end

if mods["Krastorio2"] and mods["space-exploration"] then
  --Solar panels
  data.raw.recipe["small-twin-solar-panel"].ingredients = {
    {type="item", name="copper-plate", amount=5}, 
    {type="item", name="copper-cable", amount=10}, 
    {type="item", name="iron-plate", amount=5}, 
    {type="item", name="kr-glass", amount=4}
  }

  data.raw.recipe["flat-solar-panel"].ingredients = {
    {type="item", name="copper-cable", amount=15}, 
    {type="item", name="steel-plate", amount=5}, 
    {type="item", name="small-twin-solar-panel", amount=1}, 
    {type="item", name="kr-glass", amount=10}
  }

  data.raw.recipe["big-solar-panel"].ingredients = {
    {type="item", name="solar-panel", amount=2}, 
    {type="item", name="advanced-circuit", amount=5}, 
    {type="item", name="electronic-circuit", amount=10}, 
    {type="item", name="copper-cable", amount=15}, 
    {type="item", name="kr-glass", amount=24}
  }

  data.raw.recipe["csp-panel"].ingredients = {
    {type="item", name="advanced-solar-panel", amount=1}, 
    {type="item", name="pipe", amount=4}, 
    {type="item", name="pipe-to-ground", amount=2}, 
    {type="item", name="copper-cable", amount=10}, 
    {type="item", name="electronic-circuit", amount=10}, 
    {type="item", name="kr-glass", amount=10}
  }
  data.raw.technology["csp-energy"].unit = {count=275, ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1},{"se-rocket-science-pack", 1}}, time=45}

  data.raw.recipe["smart-solar-panel"].ingredients = {
    {type="item", name="advanced-solar-panel", amount=2}, 
    {type="item", name="kr-imersium-gear-wheel", amount=10}, 
    {type="item", name="advanced-circuit", amount=50}, 
    {type="item", name="copper-cable", amount=25}, 
    {type="item", name="kr-silicon", amount=20}
  }
  data.raw.technology["smart-energy"].unit = {count=325, ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"se-rocket-science-pack", 1}}, time=50}
  --Wind turbines
  --data.raw.recipe["advanced-wind-turbine"].ingredients = { whatever }
  --data.raw.recipe["advanced-wind-turbine"].results = { whatever }

  --data.raw.recipe["big-wind-turbine"].ingredients = { whatever }
  --data.raw.recipe["big-wind-turbine"].results = { whatever }
  
  --data.raw.recipe["eco-wind-turbine"].ingredients = { whatever }
  --data.raw.recipe["eco-wind-turbine"].results = { whatever }

  --data.raw.recipe["big-wind-turbine"].ingredients = { whatever }
  --data.raw.recipe["big-wind-turbine"].results = { whatever }

  --Wave power plant
  --data.raw.recipe["wave-power-plant"].ingredients = { whatever }
  --data.raw.recipe["wave-power-plant"].results = { whatever }
end

if mods["Krastorio2"] then
  --Solar panels
  data.raw.recipe["small-twin-solar-panel"].ingredients = {
    {type="item", name="copper-plate", amount=5}, 
    {type="item", name="copper-cable", amount=10}, 
    {type="item", name="iron-plate", amount=5}, 
    {type="item", name="kr-glass", amount=4}
  }

  data.raw.recipe["flat-solar-panel"].ingredients = {
    {type="item", name="copper-cable", amount=15}, 
    {type="item", name="steel-plate", amount=5}, 
    {type="item", name="small-twin-solar-panel", amount=1}, 
    {type="item", name="kr-glass", amount=10}
  }

  data.raw.recipe["big-solar-panel"].ingredients = {
    {type="item", name="solar-panel", amount=2}, 
    {type="item", name="advanced-circuit", amount=5}, 
    {type="item", name="electronic-circuit", amount=10}, 
    {type="item", name="copper-cable", amount=15}, 
    {type="item", name="kr-glass", amount=24}
  }

  data.raw.recipe["csp-panel"].ingredients = {
    {type="item", name="advanced-solar-panel", amount=1}, 
    {type="item", name="pipe", amount=4}, 
    {type="item", name="pipe-to-ground", amount=2}, 
    {type="item", name="copper-cable", amount=10}, 
    {type="item", name="electronic-circuit", amount=10}, 
    {type="item", name="kr-glass", amount=10}
  }

  data.raw.recipe["smart-solar-panel"].ingredients = {
    {type="item", name="advanced-solar-panel", amount=2}, 
    {type="item", name="kr-imersium-gear-wheel", amount=10}, 
    {type="item", name="advanced-circuit", amount=50}, 
    {type="item", name="copper-cable", amount=25}, 
    {type="item", name="kr-silicon", amount=20}
  }
  --Wind turbines
  --data.raw.recipe["advanced-wind-turbine"].ingredients = { whatever }
  --data.raw.recipe["advanced-wind-turbine"].results = { whatever }

  --data.raw.recipe["big-wind-turbine"].ingredients = { whatever }
  --data.raw.recipe["big-wind-turbine"].results = { whatever }
  
  --data.raw.recipe["eco-wind-turbine"].ingredients = { whatever }
  --data.raw.recipe["eco-wind-turbine"].results = { whatever }

  --data.raw.recipe["big-wind-turbine"].ingredients = { whatever }
  --data.raw.recipe["big-wind-turbine"].results = { whatever }

  --Wave power plant
  --data.raw.recipe["wave-power-plant"].ingredients = { whatever }
  --data.raw.recipe["wave-power-plant"].results = { whatever }
end

if mods["space-exploration"] then
  --Solar panels
  --data.raw.recipe["small-twin-solar-panel"].ingredients = {{type="item", name="copper-plate", amount=5}, {type="item", name="copper-cable", amount=10}, {type="item", name="iron-plate", amount=5}, {type="item", name="glass", amount=4}}

  --data.raw.recipe["flat-solar-panel"].ingredients = {{type="item", name="copper-cable", amount=15}, {type="item", name="steel-plate", amount=5}, {type="item", name="small-twin-solar-panel", amount=1}, {type="item", name="glass", amount=10}}

  --data.raw.recipe["big-solar-panel"].ingredients = {{type="item", name="solar-panel", amount=2}, {type="item", name="advanced-circuit", amount=5}, {type="item", name="electronic-circuit", amount=10}, {type="item", name="copper-cable", amount=15}, {type="item", name="glass", amount=24}}

  --data.raw.recipe["csp-panel"].ingredients = {{type="item", name="advanced-solar-panel", amount=1}, {type="item", name="pipe", amount=4}, {type="item", name="pipe-to-ground", amount=2}, {type="item", name="copper-cable", amount=10}, {type="item", name="electronic-circuit", amount=10}, {type="item", name="glass", amount=10}}
  data.raw.technology["csp-energy"].unit = {count=275, ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1},{"se-rocket-science-pack", 1}}, time=45}

  --data.raw.recipe["smart-solar-panel"].ingredients = {{type="item", name="advanced-solar-panel", amount=2}, {type="item", name="imersium-gear-wheel", amount=10}, {type="item", name="advanced-circuit", amount=50}, {type="item", name="copper-cable", amount=25}, {type="item", name="silicon", amount=20}}
  data.raw.technology["smart-energy"].unit = {count=325, ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"se-rocket-science-pack", 1}}, time=50}
  --Wind turbines
  --data.raw.recipe["advanced-wind-turbine"].ingredients = { whatever }
  --data.raw.recipe["advanced-wind-turbine"].results = { whatever }

  --data.raw.recipe["big-wind-turbine"].ingredients = { whatever }
  --data.raw.recipe["big-wind-turbine"].results = { whatever }
  
  --data.raw.recipe["eco-wind-turbine"].ingredients = { whatever }
  --data.raw.recipe["eco-wind-turbine"].results = { whatever }

  --data.raw.recipe["big-wind-turbine"].ingredients = { whatever }
  --data.raw.recipe["big-wind-turbine"].results = { whatever }

  --Wave power plant
  --data.raw.recipe["wave-power-plant"].ingredients = { whatever }
  --data.raw.recipe["wave-power-plant"].results = { whatever }
end

--same for technology