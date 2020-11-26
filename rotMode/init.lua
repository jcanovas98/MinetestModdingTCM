-- ROT STONE
minetest.register_node("rotMode:dirt_rot", {
description = "rot",
tiles = {"rot_up.png",    -- y+
        "rot_down.png",  -- y-
        "rot_side.png", -- x+
        "rot_side.png",  -- x-
        "rot_side.png",  -- z+
        "rot_side.png",}, --z-
groups = {snappy = 1, bendy = 2, cracky = 1, melty = 2, level = 2},
sounds = default_metal_sounds,

})