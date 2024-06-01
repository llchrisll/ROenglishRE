-- Original translation works of zackdreaver: https://github.com/zackdreaver/ROenglishRE
-- Continuated by llchrisll at https://github.com/llchrisll/ROenglishRE
-- This file can be distributed, used and modified freely
-- This file shouldn't be claimed as part of your project, unless you fork it from https://github.com/llchrisll/ROenglishRE
-- Last updated: 20240601

function main()
	for ItemID, DESC in pairs(tbl) do
		result, msg = AddItem(ItemID, DESC.unidentifiedDisplayName, DESC.unidentifiedResourceName, DESC.identifiedDisplayName, DESC.identifiedResourceName, DESC.slotCount, DESC.ClassNum)
		if not result then
			return false, msg
		end
		for k,v in pairs(DESC.unidentifiedDescriptionName) do
			result, msg = AddItemUnidentifiedDesc(ItemID, v)
			if not result then
				return false, msg
			end
		end
		if (DisplayOrigin == 1 and DESC.Server ~= nil) or DisplayItemID == 1 then
			if DisplayOrigin == 1 and DESC.Server ~= nil then
				AddItemIdentifiedDesc(ItemID, "^0000CCServer: "..ServerColour..DESC.Server.."^000000")
			end
			if DisplayItemID == 1 then
				AddItemIdentifiedDesc(ItemID, "^0000CCItem ID:^000000 "..ItemID)
			end
			AddItemIdentifiedDesc(ItemID, "________________________")
		end
		for k,v in pairs(DESC.identifiedDescriptionName) do
			result, msg = AddItemIdentifiedDesc(ItemID, v)
			if not result then
				return false, msg
			end
		end
		if (DisplayOrigin == 2 and DESC.Server ~= nil) or DisplayItemID == 2 or DisplayDatabase == true then
			AddItemIdentifiedDesc(ItemID, "________________________")
			if DisplayItemID == 2 then
				AddItemIdentifiedDesc(ItemID, "^0000CCItem ID:^000000 "..ItemID)
			end
			if DisplayDatabase == true then
				AddItemIdentifiedDesc(ItemID, "<URL>Divine-Pride.net<INFO>https://www.divine-pride.net/database/item/"..ItemID.."</INFO></URL>")
			end
			if DisplayOrigin == 2 and DESC.Server ~= nil then
				AddItemIdentifiedDesc(ItemID, "^0000CCServer: "..ServerColour..DESC.Server.."^000000")
			end
		end
	end
	return true, "good"
end