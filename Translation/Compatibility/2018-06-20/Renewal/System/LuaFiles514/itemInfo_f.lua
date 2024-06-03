-- Original translation works of zackdreaver: https://github.com/zackdreaver/ROenglishRE
-- Continuated by llchrisll at https://github.com/llchrisll/ROenglishRE
-- This file can be distributed, used and modified freely
-- This file shouldn't be claimed as part of your project, unless you fork it from https://github.com/llchrisll/ROenglishRE
-- Last updated: 20240603

function main()
	for ItemID, DESC in pairs(tbl) do
		if DisplayOrigin == 1 and DESC.Server ~= nil then
			result, msg = AddItem(ItemID, DESC.unidentifiedDisplayName, DESC.unidentifiedResourceName, DESC.identifiedDisplayName..' '..TagStart..DESC.Server..TagEnd, DESC.identifiedResourceName, DESC.slotCount, DESC.ClassNum)
		else
			result, msg = AddItem(ItemID, DESC.unidentifiedDisplayName, DESC.unidentifiedResourceName, DESC.identifiedDisplayName, DESC.identifiedResourceName, DESC.slotCount, DESC.ClassNum)
		end
		if not result == true then
			return false, msg
		end
		for k, v in pairs(DESC.unidentifiedDescriptionName) do
			result, msg = AddItemUnidentifiedDesc(ItemID, v)
			if not result == true then
				return false, msg
			end
		end
		if (DisplayOrigin == 2 and DESC.Server ~= nil) or DisplayItemID == 1 then
			if DisplayOrigin == 2 and DESC.Server ~= nil then
				AddItemIdentifiedDesc(ItemID, "^0000CCServer: "..ServerColour..DESC.Server.."^000000")
			end
			if DisplayItemID == 1 then
				AddItemIdentifiedDesc(ItemID, "^0000CCItem ID:^000000 "..ItemID)
			end
			AddItemIdentifiedDesc(ItemID, "________________________")
		end
		for k, v in pairs(DESC.identifiedDescriptionName) do
			result, msg = AddItemIdentifiedDesc(ItemID, v)
			if not result == true then
				return false, msg
			end
		end
		if (DisplayOrigin == 3 and DESC.Server ~= nil) or DisplayItemID == 2 or DisplayDatabase == true then
			AddItemIdentifiedDesc(ItemID, "________________________")
			if DisplayItemID == 2 then
				AddItemIdentifiedDesc(ItemID, "^0000CCItem ID:^000000 "..ItemID)
			end
			if DisplayDatabase == true and DESC.CustomDB == nil then
				AddItemIdentifiedDesc(ItemID, "<URL>"..DbDisplay.."<INFO>"..DbURL..ItemID.."</INFO></URL>")
			elseif DisplayDatabase == true and DESC.CustomDB == true then
				AddItemIdentifiedDesc(ItemID, "<URL>"..CustomDbDisplay.."<INFO>"..CustomDbUrl..ItemID.."</INFO></URL>")
			end
			if DisplayOrigin == 3 and DESC.Server ~= nil then
				AddItemIdentifiedDesc(ItemID, "^0000CCServer: "..ServerColour..DESC.Server.."^000000")
			end
		end
		if nil ~= DESC.EffectID then
			result, msg = AddItemEffectInfo(ItemID, DESC.EffectID)
		end
		if not result == true then
			return false, msg
		end
		if nil ~= DESC.costume then
			result, msg = AddItemIsCostume(ItemID, DESC.costume)
		end
		if not result == true then
			return false, msg
		end
	end
	return true, "good"
end

function main_server()
	for ItemID, DESC in pairs(tbl) do
		result, msg = AddItem(ItemID, DESC.identifiedDisplayName, DESC.slotCount)
		if not result == true then
			return false, msg
		end
	end
	return true, "good"
end