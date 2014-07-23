-- NODES

minetest.register_node("noairblocks:water_flowingx", {
	description = "Flowing Waterx",
	inventory_image = minetest.inventorycube("default_water.png"),
	drawtype = "flowingliquid",
	tiles = {"default_water.png"},
	special_tiles = {
		{
			image="default_water_flowing_animated.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.8}
		},
		{
			image="default_water_flowing_animated.png",
			backface_culling=true,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.8}
		},
	},
	alpha = 0,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "noairblocks:water_flowingx",
	liquid_alternative_source = "noairblocks:water_sourcex",
	liquid_viscosity = WATER_VISC,
	freezemelt = "default:snow",
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {water=3, liquid=3, puts_out_fire=1, not_in_creative_inventory=1, freezes=1, melt_around=1},
})

minetest.register_node("noairblocks:water_sourcex", {
	description = "Water Sourcex",
	inventory_image = minetest.inventorycube("default_water.png"),
	drawtype = "liquid",
	tiles = {
		{name="default_water_source_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}}
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name="default_water_source_animated.png",
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0},
			backface_culling = false,
		}
	},
	alpha = 0,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "noairblocks:water_flowingx",
	liquid_alternative_source = "noairblocks:water_sourcex",
	liquid_viscosity = WATER_VISC,
	freezemelt = "default:ice",
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {water=3, liquid=3, puts_out_fire=1, freezes=1},
})


-- ABM


-- 6 x default to noairblocks


local surround_positions = {
	{x=-1, y=0, z=0},
	{x=1, y=0, z=0},
	{x=0, y=0, z=-1},
	{x=0, y=0, z=1},
	{x=0, y=1, z=0},
}

minetest.register_abm({
	nodenames = {"group:sea"},
	interval = 1,
	chance = 1,
	action = function(pos)
		for _,i in pairs(surround_positions) do
			local p = vector.add(pos, i)
			if minetest.get_node({x=p.x, y=p.y+1, z=p.z}).name ~= "air" then
				local nd = minetest.get_node(p).name
				if nd == "default:water_source" then
					minetest.add_node(p, {name = "noairblocks:water_sourcex"})
				elseif nd == "default:water_flowing" then
					minetest.add_node(p, {name = "noairblocks:water_flowingx"})
				end
			end
		end
	end,
})
