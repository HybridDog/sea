-- NODES

-- TODO: override desert sand drop!

--[[
minetest.register_node("whiteshell:whiteshell", {
	description = "White shell",
	drawtype = "normal",
--	tiles = {"default_desert_sand.png^clams_crushedwhite.png"},
	tiles = {"default_desert_sand.png"},
	is_ground_content = true,
	groups = {sand=1, crumbly=3, falling_node=1, sand=1, not_in_creative_inventory=1},
	drop = {
		max_items = 2,
		items = {
			{
				items = {'clams:crushedwhite'},
			},
			{
				items = {'default:desert_sand'},
			}
		}
	},
	sounds = default.node_sound_sand_defaults(),
})

-- WHITESHELL GENERATION


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "whiteshell:whiteshell",
	wherein        = "default:desert_sand",
	clust_scarcity = 10*10*10,
	clust_num_ores = 18,
	clust_size     = 6,
	height_max     = 31000,
	height_min     = -31000,
})


]]
-- ALIASES


minetest.register_alias("whiteshell:whiteshell", "default:desert_sand")
minetest.register_alias("clams:whiteshell","whiteshell:whiteshell")
