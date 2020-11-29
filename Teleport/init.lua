-- teleport cube
minetest.register_node("teleport:teleport_pad", {
description = "Teleport",
tiles = {"teleport_up.png",   -- y+
        "teleport_down.png",  -- y-
        "teleport_side.png",  -- x+
        "teleport_side.png",  -- x-
        "teleport_side.png",  -- z+
        "teleport_side.png",  -- z-
      }, 
groups = {cracky=3},
on_construct = function(pos)
  local player = minetest.get_player_by_name("singleplayer")
  local inv = player:get_inventory()
  local stack = ItemStack("teleport:teleport_command")
  local meta = stack:get_meta()
  meta:set_int("x", pos.x)
  meta:set_int("y", pos.y + 1)
  meta:set_int("z", pos.z)
  local leftover = inv:add_item("main", stack)
end
})

-- teleport command
minetest.register_craftitem("teleport:teleport_command", {
    description = "Command",
    inventory_image = "teleport_controller.png",
    on_use = function(itemstack, user, pointed_thing)
        local meta = itemstack:get_meta()
        local pos = {x=meta:get_int("x"), y=meta:get_int("y"), z=meta:get_int("z")}
        user:set_pos(pos)
      end

})