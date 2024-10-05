-- Original translation works of zackdreaver: https://github.com/zackdreaver/ROenglishRE
-- Continuated by llchrisll at https://github.com/llchrisll/ROenglishRE
-- This file can be distributed, used and modified freely
-- This file shouldn't be claimed as part of your project, unless you fork it from https://github.com/llchrisll/ROenglishRE
-- Last updated: 20241005

function main()
	for ItemID, DESC in pairs(tbl) do
		if DisplayServer == 1 and DESC.Server ~= nil and DESC.Custom == nil then
			result, msg = AddItem(ItemID, DESC.unidentifiedDisplayName, DESC.unidentifiedResourceName, DESC.identifiedDisplayName..' '..TagStart..DESC.Server..TagEnd, DESC.identifiedResourceName, DESC.slotCount, DESC.ClassNum)
		elseif DisplayCustomServer == 1 and DESC.Custom == true then
			result, msg = AddItem(ItemID, DESC.unidentifiedDisplayName, DESC.unidentifiedResourceName, DESC.identifiedDisplayName..' '..CustomTagStart..CServerName..CustomTagEnd, DESC.identifiedResourceName, DESC.slotCount, DESC.ClassNum)
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
		if (DisplayServer == 2 and DESC.Server ~= nil) or (DisplayCustomServer == 2 and DESC.Custom == true) or DisplayItemID == 1 then
			if DisplayServer == 2 and DESC.Server ~= nil then
				AddItemIdentifiedDesc(ItemID, "^0000CCServer: "..ServerColour..DESC.Server.."^000000")
			elseif DisplayCustomServer == 2 and DESC.Custom == true then
				AddItemIdentifiedDesc(ItemID, "^0000CCServer: "..CServerColour..CServerName.."^000000")
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
		if (DisplayServer == 3 and DESC.Server ~= nil) or (DisplayCustomServer == 3 and DESC.Custom == true) or DisplayItemID == 2 or DisplayDatabase == true or DisplayCustomDB == true then
			AddItemIdentifiedDesc(ItemID, "________________________")
			if DisplayItemID == 2 then
				AddItemIdentifiedDesc(ItemID, "^0000CCItem ID:^000000 "..ItemID)
			end
			if DisplayServer == 3 and DESC.Server ~= nil and DESC.Custom == nil then
				AddItemIdentifiedDesc(ItemID, "^0000CCServer: "..ServerColour..DESC.Server.."^000000")
			elseif DisplayCustomServer == 3 and DESC.Custom == true then
				AddItemIdentifiedDesc(ItemID, "^0000CCServer: "..CServerColour..CServerName.."^000000")
			end
			if DisplayDatabase == true or DisplayCustomDB == true then
				if DisplayDatabase == true and DESC.Custom == nil then
					local Database = ItemDatabase["Divine-Pride"]
					if DESC.Server ~= nil and ItemDatabase[DESC.Server] ~= nil then
						Database = ItemDatabase[DESC.Server]
					end
					AddItemIdentifiedDesc(ItemID, "<URL>" .. Database.Name .. "<INFO>" .. Database.URL .. ItemID .. "</INFO></URL>")
				elseif DisplayCustomDB == true and DESC.Custom == true then
					AddItemIdentifiedDesc(ItemID, "<URL>" .. ItemDatabase["Custom"].Name .. "<INFO>" .. ItemDatabase["Custom"].URL .. ItemID .. "</INFO></URL>")
				end
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