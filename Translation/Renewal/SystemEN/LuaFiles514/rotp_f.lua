-- Original translation works of zackdreaver: https://github.com/zackdreaver/ROenglishRE
-- Continuated by llchrisll at https://github.com/llchrisll/ROenglishRE
-- This file can be distributed, used and modified freely
-- This file shouldn't be claimed as part of your project, unless you fork it from https://github.com/llchrisll/ROenglishRE

-----------     DON'T TOUCH THIS FILE AT ALL     -----------
----------- IF YOU DON'T KNOW WHAT YOU ARE DOING -----------

--[[ F_ROTP
	Handles merging and overwriting of lua tables
	@param source table
	@param dest table
	@param st integer Optional: 1=Special lua tables, see below
	@param c_tbl boolean Optional: Should the function respect additional tables (true/false) (default: false)
	
	Special Lua Tables:
	Lua tables like transparentItem have their last entry containing 0 or similiar,
	so we need to replace that with the first custom entry and re-add that via our table.
]]
function F_ROTP(source,dest,st,c_tbl)
	-- Return if source or dest is not provided or source is 0
	if source == nil or dest == nil then
		return
	end
	if st == 1 then -- If it's a special table, get the index of the last entry and merge from there
		ct = #dest
	end
	if c_tbl == nil then -- Default c_table to false if it not provided
		c_tbl = false
	end
	for k, v in pairs(source) do
		if type(v) == "table" and c_tbl == true then
			if not dest[k] then
				dest[k] = {}
			end
			for k2,v2 in pairs(v) do
				if st == 1 then
					dest[k][ct] = v2
					ct = ct + 1
				else
					dest[k][k2] = v2
				end
			end
		else
			if st == 1 then
				dest[ct] = v
				ct = ct + 1
			else
				dest[k] = v
			end
		end
	end
	return
end

--[[ F_itemInfoMerge(src, state)
	Merges a custom tables into the main table
	@param src table to merge into tbl
	@param state bolean optional: overwrite existing entries (true) or not (false)
]]
function F_itemInfoMerge(src, state)
	if src == nil then
		return
	end
	if state == nil then -- Default state to false if not provided
		state = false
	end
	for ItemID,DESC in pairs(src) do
		if state == false then
			if not tbl[ItemID] then
				tbl[ItemID] = {}
				tbl[ItemID] = DESC
			end
		else
			tbl[ItemID] = DESC
		end
		if src == tbl_custom or src == tbl_override then
			tbl[ItemID].Custom = true
		end
	end
	return
end