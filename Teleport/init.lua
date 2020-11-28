-- teleport cube
minetest.register_node("teleport:teleport_pad", {
description = "teleport",
tiles = {"teleport_node.png"},
groups = {cracky=3}
})

-- minetest.


-- teleport command

minetest.register_craftitem("teleport:teleport_command", {
    description = "Command",
    inventory_image = "teleport_controller.png"
})