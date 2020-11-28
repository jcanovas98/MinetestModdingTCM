-- teleport cube
minetest.register_node("teleport:teleport", {
description = "teleport",
tiles = {"rot_up.png",   -- y+
        "rot_down.png",  -- y-
        "rot_side.png",  -- x+
        "rot_side.png",  -- x-
        "rot_side.png",  -- z+
        "rot_side.png",  -- z-
      }, 
is_ground_content = false,
groups = {crumbly=3}
})
