-- Original translation works of zackdreaver: https://github.com/zackdreaver/ROenglishRE
-- Continuated by llchrisll at https://github.com/llchrisll/ROenglishRE
-- This file can be distributed, used and modified freely
-- This file shouldn't be claimed as part of your project, unless you fork it from https://github.com/llchrisll/ROenglishRE
-- Credits to Neo-Mind for original code.

-- Load the split function files
require("System/LuaFiles514/itemInfo_f")

-- Load the translation files
dofile("System/LuaFiles514/itemInfo.lua")
dofile("System/LuaFiles514/itemInfo_PRE.lua")

-- Additional Configs
-- Display origin server based on translation file's ServerName argument
-- 0 = disable/1 = in Item Name/2 = top of description/3 = bottom of description
DispayOrigin = 1

-- Show ItemID at bottom
-- 0 = disable/1 = top of description/2 = bottom of description
DisplayItemID = 2

-- Display Divine-Pride.net Link bottom of description (true/false)
DisplayDatabase = false

-- Now as a simple example.
-- I am simply going to change name of Red Potion to Crimson Potion. 
-- But you can add anything in the same way.
-- Format is same as the original one, just the table name is different

tbl_custom = {
	[501] = {
		unidentifiedDisplayName = "Crimson Potion",
		unidentifiedResourceName = "說除ん暮",
		unidentifiedDescriptionName = {
			"A potion made from",
			"grinded Red Herbs that",
			"restores ^000088about 45 HP^000000.",
			"^ffffff_^000000",
			"Weight: ^7777777^000000"
		},
		identifiedDisplayName = "Crimson Potion",
		identifiedResourceName = "說除ん暮",
		identifiedDescriptionName = {
			"^000088HP Recovery Item^000000",
			"A potion made from",
			"grinded Red Herbs that",
			"restores ^000088about 45 HP^000000.",
			"^ffffff_^000000",
			"Weight: ^7777777^000000"
		},
		slotCount = 0,
		ClassNum = 0
	},
}
function itemInfoMerge(src, state)
	if _IICharServer ~= nil then
		if _IICharServer == 'Pre-Renewal' then
			trg = tbl_prere
		else
			trg = tbl
		end
	end
	if trg == nil then
		trg = tbl
	end
	for ItemID,DESC in pairs(src) do
		if state == false then
			if not trg[ItemID] then
				trg[ItemID] = {}
				trg[ItemID] = DESC
			end
		else
			trg[ItemID] = DESC
		end
	end
	return
end

-- src = table to merge into tbl
-- state = overwrite existing entries (true) or not (false)
itemInfoMerge(tbl_custom, true) -- add custom items (including official overrides)
--itemInfoMerge(tbl_, false) -- additional table
