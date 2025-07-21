function on_built_entity_function(event)
    local entity = event.entity or event.created_entity 
    local entity_name = entity.name

    if entity_name == "smart-solar-panel" or entity_name == "smart-solar-panel-second" then
    local new_entity = entity.surface.create_entity {
        name = "smart-solar-panel-second",
        position = entity.position,
        surface = entity.surface,
        force = "player" or entity.force
    }
    
        if new_entity and new_entity.valid then 
            rendering.draw_animation {
                animation = "ssp-animation",
                render_layer = "entity-info-icon-above",
                target = new_entity,
                surface = new_entity.surface
            }
        end
        entity.destroy()
    end
end

script.on_event({
    defines.events.on_built_entity
}, on_built_entity_function)