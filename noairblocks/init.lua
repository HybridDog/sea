-- NODES

local function copytable(t)
	local t2 = {}
	for n,i in pairs(t) do
		t2[n] = i
	end
	return t2
end

local water = copytable(minetest.registered_nodes["default:water_source"])
water.description = water.description.."x"
water.alpha = 0
water.liquid_alternative_source = "noairblocks:water_sourcex"
water.liquid_alternative_flowing = "noairblocks:water_flowingx"
water.groups = copytable(water.groups)
water.groups.not_in_creative_inventory = 1

minetest.register_node(water.liquid_alternative_source, water)

local water = copytable(minetest.registered_nodes["default:water_flowing"])
water.description = water.description.."x"
water.alpha = 0
water.liquid_alternative_source = "noairblocks:water_sourcex"
water.liquid_alternative_flowing = "noairblocks:water_flowingx"

minetest.register_node(water.liquid_alternative_flowing, water)


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
	neighbors = {"group:water"},
	interval = 3,
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

minetest.register_abm({
	nodenames = {"noairblocks:water_sourcex", "noairblocks:water_flowingx"},
	neighbors = {"air"},
	interval = 5,
	chance = 1,
	action = function(pos)
		if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "air" then
			minetest.remove_node(pos)
		end
	end,
})
