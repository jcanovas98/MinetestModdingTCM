-- ROT STONE
minetest.register_node("rotmod:dirt_rot", {
description = "Rotten Dirt",
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
description = "Sacred Purgator",
tiles = {"rot_sacred.png"},
groups = {cracky=3}
})

minetest.register_abm({
    nodenames = {"default:dirt_with_grass"},
    interval = 10.0,
    chance = 200,
    catch_up = false,
    action = function(pos, node, active_object_count,
            active_object_count_wider)
        local targetPos = {x = pos.x, y = pos.y, z = pos.z}
        minetest.set_node(targetPos, {name = "rotmod:dirt_rot"})
    end
})

minetest.register_abm({
    nodenames = {"default:dirt_with_grass"},
    neighbors = {"rotmod:dirt_rot"},
    interval = 2.0,
    catch_up = false,
    action = function(pos, node, active_object_count,
            active_object_count_wider)
        local targetPos = {x = pos.x, y = pos.y, z = pos.z}
        minetest.set_node(targetPos, {name = "rotmod:dirt_rot"})
    end
})

minetest.register_abm({
    nodenames = {"rotmod:dirt_rot"},
    interval = 8.0,
    catch_up = false,
    action = function(pos, node, active_object_count,
            active_object_count_wider)
        local targetPos = {x = pos.x, y = pos.y, z = pos.z}
        minetest.set_node(targetPos, {name = "air"})
    end
})

local rot = minetest.get_content_id("rotmod:dirt_rot")
local grass = minetest.get_content_id("default:dirt_with_grass")

minetest.register_abm({
    nodenames = {"rotmod:sacred_rot"},
    interval = 0.01,
    action = function(pos)
      local pos1 = {x = pos.x - 10, y = pos.y - 10, z = pos.z - 10}
      local pos2 = {x = pos.x + 10, y = pos.y + 10, z = pos.z + 10}
      local vm = minetest.get_voxel_manip()
      local emin, emax = vm:read_from_map(pos1, pos2)
      local a = VoxelArea:new{ MinEdge = emin, MaxEdge = emax }
      local data = vm:get_data()
      for z = pos1.z, pos2.z do
        for y = pos1.y, pos2.y do
          for x = pos1.x, pos2.x do
            local vi = a:index(x, y, z)
            if data[vi] == rot then
              data[vi] = grass
            end
          end
        end
      end
    vm:set_data(data)
    vm:write_to_map(true)
    end
      
})

