-- Custom recipe for K2:

if mods["Krastorio2"] and mods["space-exploration"] then
  --Solar panels
  data.raw.recipe["small-twin-solar-panel"].ingredients = {{"copper-plate", 5}, {"copper-cable", 10}, {"iron-plate", 5}, {"glass", 4}}

  data.raw.recipe["flat-solar-panel"].ingredients = {{"copper-cable", 15}, {"steel-plate", 5}, {"small-twin-solar-panel", 1}, {"glass", 10}}

  data.raw.recipe["big-solar-panel"].ingredients = {{"solar-panel", 2}, {"advanced-circuit", 5}, {"electronic-circuit", 10}, {"copper-cable", 15}, {"glass", 24}}

  data.raw.recipe["csp-panel"].ingredients = {{"advanced-solar-panel", 1}, {"pipe", 4}, {"pipe-to-ground", 2}, {"copper-cable", 10}, {"electronic-circuit", 10}, {"glass", 10}}
  data.raw.technology["csp-energy"].unit = {count=275, ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1},{"se-rocket-science-pack", 1}}, time=45}

  data.raw.recipe["smart-solar-panel"].ingredients = {{"advanced-solar-panel", 2}, {"imersium-gear-wheel", 10}, {"advanced-circuit", 50}, {"copper-cable", 25}, {"silicon", 20}}
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
  data.raw.recipe["small-twin-solar-panel"].ingredients = {{"copper-plate", 5}, {"copper-cable", 10}, {"iron-plate", 5}, {"glass", 4}}

  data.raw.recipe["flat-solar-panel"].ingredients = {{"copper-cable", 15}, {"steel-plate", 5}, {"small-twin-solar-panel", 1}, {"glass", 10}}

  data.raw.recipe["big-solar-panel"].ingredients = {{"solar-panel", 2}, {"advanced-circuit", 5}, {"electronic-circuit", 10}, {"copper-cable", 15}, {"glass", 24}}

  data.raw.recipe["csp-panel"].ingredients = {{"advanced-solar-panel", 1}, {"pipe", 4}, {"pipe-to-ground", 2}, {"copper-cable", 10}, {"electronic-circuit", 10}, {"glass", 10}}

  data.raw.recipe["smart-solar-panel"].ingredients = {{"advanced-solar-panel", 2}, {"imersium-gear-wheel", 10}, {"advanced-circuit", 50}, {"copper-cable", 25}, {"silicon", 20}}
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
  --data.raw.recipe["small-twin-solar-panel"].ingredients = {{"copper-plate", 5}, {"copper-cable", 10}, {"iron-plate", 5}, {"glass", 4}}

  --data.raw.recipe["flat-solar-panel"].ingredients = {{"copper-cable", 15}, {"steel-plate", 5}, {"small-twin-solar-panel", 1}, {"glass", 10}}

  --data.raw.recipe["big-solar-panel"].ingredients = {{"solar-panel", 2}, {"advanced-circuit", 5}, {"electronic-circuit", 10}, {"copper-cable", 15}, {"glass", 24}}

  --data.raw.recipe["csp-panel"].ingredients = {{"advanced-solar-panel", 1}, {"pipe", 4}, {"pipe-to-ground", 2}, {"copper-cable", 10}, {"electronic-circuit", 10}, {"glass", 10}}
  data.raw.technology["csp-energy"].unit = {count=275, ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1},{"se-rocket-science-pack", 1}}, time=45}

  --data.raw.recipe["smart-solar-panel"].ingredients = {{"advanced-solar-panel", 2}, {"imersium-gear-wheel", 10}, {"advanced-circuit", 50}, {"copper-cable", 25}, {"silicon", 20}}
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