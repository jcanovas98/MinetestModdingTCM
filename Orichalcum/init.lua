-- ORICHALCUM STONE
minetest.register_node("orichalcum:stone_with_orichalcum", {
description = "Orichalcum",
tiles = {"ori_stone.png"},
groups = {snappy = 1, bendy = 2, cracky = 1, melty = 2, level = 2},
sounds = default_metal_sounds,
drop = "orichalcum:orichalcum_lump"
})

-- ORICHALCUM LUMP
minetest.register_craftitem("orichalcum:orichalcum_lump", {
description = "Orichalcum Lump",
inventory_image = "ori_lump.png"
})

-- ORICHALCUM INGOT
minetest.register_craftitem("orichalcum:orichalcum_ingot", {
description = "Orichalcum Ingot",
inventory_image = "ori_ingot.png"
})



-- ORE GEN
minetest.register_ore({
  ore_type       = "scatter",
  ore            = "orichalcum:stone_with_orichalcum",
  wherein        = "default:stone",
  clust_scarcity = 8 * 8 * 8,
  clust_num_ores = 9,
  clust_size     = 3,
  y_max          = 31000,
  y_min          = 1025,
})


--COOKING
minetest.register_craft({
    type = "cooking",
    output = "orichalcum:orichalcum_ingot",
    recipe = "orichalcum:orichalcum_lump",
    cooktime = 10,
})


-- SWORD
minetest.register_tool("orichalcum:sword_orichalcum", {
description = "Orichalcum Sword",
inventory_image = "ori_sword.png",
tool_capabilities = {
full_punch_interval = 0.5,
max_drop_level = 1,
groupcaps = {
fleshy = {
maxlevel = 2,
uses = 200,
times = { [1]=1.60, [2]=1.20, [3]=0.80 }
},
},
damage_groups = {fleshy=10},
},
})

minetest.register_craft({
output = "orichalcum:sword_orichalcum",
recipe = {
{"", "orichalcum:orichalcum_ingot", ""},
{"", "orichalcum:orichalcum_ingot", ""},
{"", "default:stick", ""}
}
})




-- PICKAXE
minetest.register_tool("orichalcum:pickaxe_orichalcum", {
description = "Orichalcum Pickaxe",
inventory_image = "ori_pickaxe.png",
tool_capabilities = {
full_punch_interval = 0.5,
max_drop_level = 1,
groupcaps = {
cracky = {
maxlevel = 2,
uses = 200,
times = { [1]=1.60, [2]=1.20, [3]=0.80 }
},
},
damage_groups = {cracky=10},
},
})

minetest.register_craft({
output = "orichalcum:pickaxe_orichalcum",
recipe = {
{"orichalcum:orichalcum_ingot", "orichalcum:orichalcum_ingot", "orichalcum:orichalcum_ingot"},
{"", "default:stick", ""},
{"", "default:stick", ""}
}
})




-- AXE
minetest.register_tool("orichalcum:axe_orichalcum", {
description = "Orichalcum Axe",
inventory_image = "ori_axe.png",
tool_capabilities = {
full_punch_interval = 0.5,
max_drop_level = 1,
groupcaps = {
choppy = {
maxlevel = 2,
uses = 200,
times = { [1]=1.60, [2]=1.20, [3]=0.80 }
},
},
damage_groups = {choppy=10},
},
})

minetest.register_craft({
output = "orichalcum:axe_orichalcum",
recipe = {
{"orichalcum:orichalcum_ingot", "orichalcum:orichalcum_ingot", ""},
{"orichalcum:orichalcum_ingot", "default:stick", ""},
{"", "default:stick", ""}
}
})




-- SHOVEL
minetest.register_tool("orichalcum:shovel_orichalcum", {
description = "Orichalcum Shovel",
inventory_image = "ori_shovel.png",
tool_capabilities = {
full_punch_interval = 0.5,
max_drop_level = 1,
groupcaps = {
crumbly = {
maxlevel = 2,
uses = 200,
times = { [1]=1.60, [2]=1.20, [3]=0.80 }
},
},
damage_groups = {crumbly=10},
},
})

minetest.register_craft({
output = "orichalcum:shovel_orichalcum",
recipe = {
{"", "orichalcum:orichalcum_ingot", ""},
{"", "default:stick", ""},
{"", "default:stick", ""}
}
})



