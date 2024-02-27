-- Original translation works of zackdreaver: https://github.com/zackdreaver/ROenglishRE
-- Continuated by llchrisll at https://github.com/llchrisll/ROenglishRE
-- This file can be distributed, used and modified freely
-- This file shouldn't be claimed as part of your project, unless you fork it from https://github.com/llchrisll/ROenglishRE
-- Credits to Neo-Mind for original code.

-- Load the split function files
require("System/LuaFiles514/itemInfo_f")

-- Load the translation files
dofile("System/LuaFiles514/itemInfo.lua") 

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
	for ItemID,DESC in pairs(src) do
		if state == false then
			if not tbl[ItemID] then
				tbl[ItemID] = {}
				tbl[ItemID] = DESC
			end
		else
			tbl[ItemID] = DESC
		end
	end
	return
end

-- src = table to merge into tbl
-- state = overwrite existing entries (true) or not (false)
itemInfoMerge(tbl_custom, true) -- add custom items (including official overrides)
--itemInfoMerge(tbl_, false) -- additional table
