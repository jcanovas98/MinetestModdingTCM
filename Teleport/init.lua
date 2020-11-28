-- teleport cube
minetest.register_node("teleport:teleport_pad", {
description = "teleport",
tiles = {"teleport_up.png",   -- y+
        "teleport_down.png",  -- y-
        "teleport_side.png",  -- x+
        "teleport_side.png",  -- x-
        "teleport_side.png",  -- z+
        "teleport_side.png",  -- z-
      }, 
groups = {cracky=3}
})

-- teleport command

minetest.register_craftitem("teleport:teleport_command", {
    description = "Command",
    inventory_image = "teleport_controller.png"
})