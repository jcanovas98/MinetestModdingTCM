-- ROT STONE
minetest.register_node("rotMode:dirt_rot", {
description = "rot",
tiles = {"rot_up.png",    -- y+
        "rot_down.png",  -- y-
        "rot_side.png", -- x+
        "rot_side.png",  -- x-
        "rot_side.png",  -- z+
        "rot_side.png",}, --z-
is_ground_content = true,
groups = {crumbly=3}
})
local timer = 0, checker = false
if not checker then
  timer = os.time()
  checker = true
end

local node = minetest.get_node_or_nil({ x = 1, y = 3, z = 4 })

(dump(node)) --> { name=.., param1=.., param2=.. }
--local node_pos   = minetest.find_node_near(pos, 1, {"rotMode:dirt_rot"})
if os.difftime(timer, os.time())>=1 then
  timer = os.time()
  local node_pos = minetest.find_node_near(pos, 1, {"default:grass"})
  if node_pos then
  local grassNode1 = minetest.get_node_or_nil({ x = 1, y = 3, z = 4 })
  minetest.swap_node({ x = 1, y = 3, z = 4 }, { name = "rotMode:dirt_rot"})
end

end
