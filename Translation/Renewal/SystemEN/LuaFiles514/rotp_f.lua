-- Original translation works of zackdreaver: https://github.com/zackdreaver/ROenglishRE
-- Continuated by llchrisll at https://github.com/llchrisll/ROenglishRE
-- This file can be distributed, used and modified freely
-- This file shouldn't be claimed as part of your project, unless you fork it from https://github.com/llchrisll/ROenglishRE

-----------     DON'T TOUCH THIS FILE AT ALL     -----------
----------- IF YOU DON'T KNOW WHAT YOU ARE DOING -----------
--[[ F_LuaTableMerge
	Merges a custom table into the main table
	@param source table
	@param dest table
]]
function F_LuaTableMerge(source,dest)
	if source == nil or dest == nil then
		return 0
	end
	for k,v in pairs(source) do
		dest[k] = v
	end
return #dest
end

--[[ F_LuaTableInsert
	Replaces the last entry of the original table with the first custom entry
	then adds the others, mostly used for `transparentItem` and other similar tables.
	@param source table
	@param dest table
]]
function F_LuaTableInsert(source,dest)
	if source == nil or dest == nil then
		return 0
	end
	local ct = #dest
	for _, v in pairs(source) do
		dest[ct] = v
		ct = ct + 1
	end
	return #dest
end

--[[ F_itemInfoMerge(src, state)
	Merges a custom tables into the main table
	@param src table to merge into tbl
	@param state bolean overwrite existing entries (true) or not (false)
]]
function F_itemInfoMerge(src, state)
	if src == nil then
		return
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