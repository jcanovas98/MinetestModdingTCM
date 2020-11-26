-- ROT STONE
minetest.register_node("rotmod:dirt_rot", {
description = "rot",
tiles = {"rot_up.png",   -- y+
        "rot_down.png",  -- y-
        "rot_side.png",  -- x+
        "rot_side.png",  -- x-
        "rot_side.png",  -- z+
        "rot_side.png",  -- z-
      }, 
is_ground_content = true,
groups = {crumbly=3}
})

-- ROT PURGATOR
minetest.register_node("rotmod:sacred_rot", {
description = "rot",
tiles = {"rot_sacred.png"},
groups = {cracky=3}
})

minetest.register_abm({
    nodenames = {"default:dirt_with_grass"},
    interval = 10.0,
    chance = 50,
    action = function(pos, node, active_object_count,
            active_object_count_wider)
        local targetPos = {x = pos.x, y = pos.y, z = pos.z}
        minetest.set_node(targetPos, {name = "rotmod:dirt_rot"})
    end
})

minetest.register_abm({
    nodenames = {"default:dirt_with_grass"},
    neighbors = {"default:dirt_with_grass", "rotmod:dirt_rot"},
    interval = 1.0,
    action = function(pos, node, active_object_count,
            active_object_count_wider)
        local targetPos = {x = pos.x, y = pos.y, z = pos.z}
        minetest.set_node(targetPos, {name = "rotmod:dirt_rot"})
    end
})

minetest.register_abm({
    nodenames = {"rotmod:dirt_rot"},
    interval = 3.0,
    action = function(pos, node, active_object_count,
            active_object_count_wider)
        local targetPos = {x = pos.x, y = pos.y, z = pos.z}
        minetest.set_node(targetPos, {name = "air"})
    end
})

--[[Cogiendo como referencia el codigo de ejemplo visto antes, cargaremos el content id de los
nodos default:dirt y rot:dirt, crearemos una función purge_rotdirt(pos, size) donde le
pasaremos una posición y en un cubo de tamaño size con centro pos convertiremos todos los
nodos de rot:dirt en default:dirt.
Por ultimo solo nos faltaria crear un ABM para el nodo rot:purgator para llamar a nuestra
función purge_rotdirt y asi eliminar los nodos de tierra enferma.--]]


