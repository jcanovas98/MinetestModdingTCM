minetest.register_node("orichalcum:stone_with_orichalcum", {
description = "My node",
tiles = {"mymod_mynode.png"},
groups = {cracky=3}
})

minetest.register_craftitem("orichalcum:orichalcum_lump", {
description = "My Item",
inventory_image = "mymod_myitem.png"
})

minetest.register_craftitem("orichalcum:orichalcum_ingot", {
description = "My Item",
inventory_image = "mymod_myitem.png"
})

minetest.register_craft({
output = "mymod:mycraft",
recipe = {
{"mymod:myitem", "" },
{"mymod:myitem","mymod:myitem"},
{"mymod:myitem","mymod:myitem"}
}
})

minetest.register_tool(" orichalcum:sword_orichalcum ", {
description = "My Tool",
inventory_image = "mymod_mytool.png",
tool_capabilities = {
full_punch_interval = 1.5,
max_drop_level = 1,
groupcaps = {
crumbly = {
maxlevel = 2,
uses = 20,
times = { [1]=1.60, [2]=1.20, [3]=0.80 }
},
},
damage_groups = {fleshy=2},
},
})

minetest.register_tool("orichalcum:pick_orichalcum", {
description = "My Tool",
inventory_image = "mymod_mytool.png",
tool_capabilities = {
full_punch_interval = 1.5,
max_drop_level = 1,
groupcaps = {
crumbly = {
maxlevel = 2,
uses = 20,
times = { [1]=1.60, [2]=1.20, [3]=0.80 }
},
},
damage_groups = {fleshy=2},
},
})

minetest.register_tool("orichalcum:shovel_orichalcum", {
description = "My Tool",
inventory_image = "mymod_mytool.png",
tool_capabilities = {
full_punch_interval = 1.5,
max_drop_level = 1,
groupcaps = {
crumbly = {
maxlevel = 2,
uses = 20,
times = { [1]=1.60, [2]=1.20, [3]=0.80 }
},
},
damage_groups = {fleshy=2},
},
})

minetest.register_tool("orichalcum:axe_orichalcum", {
description = "My Tool",
inventory_image = "mymod_mytool.png",
tool_capabilities = {
full_punch_interval = 1.5,
max_drop_level = 1,
groupcaps = {
crumbly = {
maxlevel = 2,
uses = 20,
times = { [1]=1.60, [2]=1.20, [3]=0.80 }
},
},
damage_groups = {fleshy=2},
},
})
