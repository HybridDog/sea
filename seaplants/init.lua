-- NODES

minetest.register_node("seaplants:kelpgreen", {
	description = "Green Kelp",
	drawtype = "plantlike",
	tiles = {"seaplants_kelpgreen.png"},
	inventory_image = "seaplants_kelpgreen.png",
	wield_image = "seaplants_kelpgreen.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.3, 0.3}
	},
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {snappy=3, seaplants=1, sea=1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(1)
})

minetest.register_node("seaplants:kelpgreenmiddle", {
	description = "Green Kelp middle",
	drawtype = "plantlike",
	tiles = {"seaplants_kelpgreenmiddle.png"},
	inventory_image = "seaplants_kelpgreenmiddle.png",
	wield_image = "seaplants_kelpgreenmiddle.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {snappy=3, seaplants=1, sea=1},
	drop = "seaplants:kelpgreen",
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("seaplants:kelpbrown", {
	description = "Brown Kelp ",
	drawtype = "plantlike",
	tiles = {"seaplants_kelpbrown.png"},
	inventory_image = "seaplants_kelpbrown.png",
	wield_image = "seaplants_kelpbrown.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.3, 0.3}
	},
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {snappy=3, seaplants=1, sea=1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(1)
})

minetest.register_node("seaplants:kelpbrownmiddle", {
	description = "Brown Kelp middle",
	drawtype = "plantlike",
	tiles = {"seaplants_kelpbrownmiddle.png"},
	inventory_image = "seaplants_kelpbrownmiddle.png",
	wield_image = "seaplants_kelpbrownmiddle.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {snappy=3, seaplants=1, sea=1},
	drop = "seaplants:kelpbrown",
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("seaplants:seagrassgreen", {
	description = "Green Seagrass",
	drawtype = "plantlike",
	tiles = {"seaplants_seagrassgreen.png"},
	inventory_image = "seaplants_seagrassgreen.png",
	wield_image = "seaplants_seagrassgreen.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.3, 0.3}
	},
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {snappy=3, seaplants=1, sea=1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(1)
})

minetest.register_node("seaplants:seagrassred", {
	description = "Red Seagrass",
	drawtype = "plantlike",
	tiles = {"seaplants_seagrassred.png"},
	inventory_image = "seaplants_seagrassred.png",
	wield_image = "seaplants_seagrassred.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.3, 0.3}
	},
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {snappy=3, seaplants=1, sea=1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(1)
})

minetest.register_node("seaplants:seaplantssandkelpgreen", {
	description = "Sea plants sand kelp green",
	tiles = {"default_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1, soil=1, not_in_creative_inventory=1},
	drop = 'default:sand',
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("seaplants:seaplantsdirtkelpgreen", {
	description = "Sea plants dirt kelp green",
	tiles = {"default_dirt.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1, not_in_creative_inventory=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("seaplants:seaplantssandkelpbrown", {
	description = "Sea plants sand kelp brown",
	tiles = {"default_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1, soil=1, not_in_creative_inventory=1},
	drop = 'default:sand',
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("seaplants:seaplantsdirtkelpbrown", {
	description = "Sea plants dirt kelp brown",
	tiles = {"default_dirt.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1, not_in_creative_inventory=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("seaplants:seaplantssandseagrassgreen", {
	description = "Sea plants sand seagrass green",
	tiles = {"default_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1, soil=1, not_in_creative_inventory=1},
	drop = 'default:sand',
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("seaplants:seaplantsdirtseagrassgreen", {
	description = "Sea plants dirt seagrass green",
	tiles = {"default_dirt.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1, not_in_creative_inventory=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("seaplants:seaplantssandseagrassred", {
	description = "Sea plants sand seagrass red",
	tiles = {"default_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1, soil=1, not_in_creative_inventory=1},
	drop = 'default:sand',
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("seaplants:seaplantsdirtseagrassred", {
	description = "Sea plants dirt seagrass red",
	tiles = {"default_dirt.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1, not_in_creative_inventory=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults(),
})


-- CRAFT ITEMS


minetest.register_craftitem("seaplants:seasaladmix", {
	description = "Sea salad mix",
	inventory_image = "seaplants_seasaladmix.png",
	on_use = minetest.item_eat(6)
})


-- CRAFTING

minetest.register_craft({
	type = "shapeless",
	output = "seaplants:seasaladmix",
	recipe = {"seaplants:kelpgreen", "seaplants:kelpbrown", "seaplants:seagrassgreen", "seaplants:seagrassred"}
})


-- SEAPLANTS SAND AND DIRT GENERATION


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "seaplants:seaplantssandkelpgreen",
	wherein        = "default:sand",
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	height_max     = -14,
	height_min     = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "seaplants:seaplantsdirtkelpgreen",
	wherein        = "default:dirt",
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	height_max     = -14,
	height_min     = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "seaplants:seaplantssandkelpbrown",
	wherein        = "default:sand",
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	height_max     = -14,
	height_min     = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "seaplants:seaplantsdirtkelpbrown",
	wherein        = "default:dirt",
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	height_max     = -14,
	height_min     = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "seaplants:seaplantssandseagrassgreen",
	wherein        = "default:sand",
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	height_max     = -14,
	height_min     = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "seaplants:seaplantsdirtseagrassgreen",
	wherein        = "default:dirt",
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	height_max     = -14,
	height_min     = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "seaplants:seaplantssandseagrassred",
	wherein        = "default:sand",
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	height_max     = -14,
	height_min     = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "seaplants:seaplantsdirtseagrassred",
	wherein        = "default:dirt",
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	height_max     = -14,
	height_min     = -31000,
})


-- ABM'S


local function get_random(pos)
	return PseudoRandom(math.abs(pos.x+pos.y*3+pos.z*5)+4)
end

minetest.register_abm({
	nodenames = {"seaplants:seaplantsdirtkelpgreen", "seaplants:seaplantssandkelpgreen"},
	interval = 12,
	chance = 12,
	action = function(pos)
		pos.y = pos.y+1
		local nd = minetest.get_node(pos).name
		if nd == "default:water_source"
		or nd == "noairblocks:water_sourcex" then
			minetest.add_node(pos, {name = "seaplants:kelpgreen"})
		end
	end
})

minetest.register_abm({
	nodenames = {"seaplants:kelpgreen"},
	interval = 6,
	chance = 3,
	action = function(pos)
		local ran = get_random(pos)
		if ran:next(1,4) == 1 then
			return
		end
		for _ = 1,3 do
			pos.y = pos.y+1
			local nd = minetest.get_node(pos).name
			if nd ~= "default:water_source"
			and nd ~= "noairblocks:water_sourcex" then
				return
			end
		end
		pos.y = pos.y-3
		minetest.add_node(pos, {name = "seaplants:kelpgreenmiddle"}) 
		pos.y = pos.y+1
		minetest.add_node(pos, {name = "seaplants:kelpgreen"}) 
	end
})

minetest.register_abm({
	nodenames = {"seaplants:seaplantsdirtkelpbrown", "seaplants:seaplantssandkelpbrown"},
	interval = 12,
	chance = 12,
	action = function(pos)
		pos.y = pos.y+1
		local nd = minetest.get_node(pos).name
		if nd == "default:water_source"
		or nd == "noairblocks:water_sourcex" then
			minetest.add_node(pos, {name = "seaplants:kelpbrown"})
		end
	end
})

minetest.register_abm({
	nodenames = {"seaplants:kelpbrown"},
	interval = 6,
	chance = 3,
	action = function(pos)
		local ran = get_random(pos)
		if ran:next(1,4) == 1 then
			return
		end
		for _ = 1,3 do
			pos.y = pos.y+1
			local nd = minetest.get_node(pos).name
			if nd ~= "default:water_source"
			and nd ~= "noairblocks:water_sourcex" then
				return
			end
		end
		pos.y = pos.y-3
		minetest.add_node(pos, {name = "seaplants:kelpbrownmiddle"}) 
		pos.y = pos.y+1
		minetest.add_node(pos, {name = "seaplants:kelpbrown"}) 
	end
})

minetest.register_abm({
	nodenames = {"seaplants:seaplantsdirtseagrassgreen", "seaplants:seaplantssandseagrassgreen"},
	interval = 12,
	chance = 12,
	action = function(pos)
		pos.y = pos.y+1
		local nd = minetest.get_node(pos).name
		if nd == "default:water_source"
		or nd == "noairblocks:water_sourcex" then
			minetest.add_node(pos, {name = "seaplants:seagrassgreen"})
		end
	end
})

minetest.register_abm({
	nodenames = {"seaplants:seaplantsdirtseagrassred", "seaplants:seaplantssandseagrassred"},
	interval = 12,
	chance = 12,
	action = function(pos)
		pos.y = pos.y+1
		local nd = minetest.get_node(pos).name
		if nd == "default:water_source"
		or nd == "noairblocks:water_sourcex" then
			minetest.add_node(pos, {name = "seaplants:seagrassred"})
		end
	end
})


-- ALIASES


minetest.register_alias("seaplants:stemsgreen","default:sand")
minetest.register_alias("seaplants:stemsbrown","default:dirt")
minetest.register_alias("seaplants:leafyblue","default:sand")
minetest.register_alias("seaplants:leafygreen","default:dirt")

minetest.register_alias("seaplants:chewstickgreen","seaplants:kelpgreen")
minetest.register_alias("seaplants:chewstickbrown","seaplants:kelpbrown")
minetest.register_alias("seaplants:leavysnackgreen","seaplants:seagrassgreen")
minetest.register_alias("seaplants:leavysnackblue","seaplants:seagrassred")
minetest.register_alias("seaplants:seasalad","seaplants:seasaladmix")
