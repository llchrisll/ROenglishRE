function main()
	for ItemID, DESC in pairs(tbl) do
		if DispayOrigin == 1 and DESC.Server ~= nil then
			result, msg = AddItem(ItemID, DESC.unidentifiedDisplayName, DESC.unidentifiedResourceName, DESC.identifiedDisplayName..' '..DESC.Server, DESC.identifiedResourceName, DESC.slotCount, DESC.ClassNum)
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
		if DispayOrigin == 2 or DisplayItemID == 1 then
			if DispayOrigin == 2 and DESC.Server ~= nil then
				AddItemIdentifiedDesc(ItemID, "^0000CCServer: ^FF0000"..DESC.Server.."^000000")
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
		if DispayOrigin == 3 or DisplayItemID == 2 or DisplayDatabase == true then
			AddItemIdentifiedDesc(ItemID, "________________________")
			if DispayOrigin == 3 and DESC.Server ~= nil then
				AddItemIdentifiedDesc(ItemID, "^0000CCServer: ^FF0000"..DESC.Server.."^000000")
			end
			if DisplayItemID == 2 then
				AddItemIdentifiedDesc(ItemID, "^0000CCItem ID:^000000 "..ItemID)
			end
			if DisplayDatabase == true then
				AddItemIdentifiedDesc(ItemID, "<URL>Divine-Pride.net<INFO>https://www.divine-pride.net/database/item/"..ItemID.."</INFO></URL>")
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