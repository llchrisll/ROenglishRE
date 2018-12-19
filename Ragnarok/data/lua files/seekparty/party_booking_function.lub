__mapList = {}
function makeMapList()
	for regionId, region in ipairs(map_list) do
		__mapList[regionId] = region
		region.id = regionId
		for mapId, map in ipairs(region.list) do
			__mapList[regionId][mapId] = map
			map.id = mapId
			map.ignore_recruit_window = region.ignore_recruit_window
		end
	end
end

function queryRegionInfo(regionId)
	if __mapList[regionId] == nil then
		return nil, nil, nil, nil
	end
	return regionId, __mapList[regionId].name, getMapIterator(regionId), __mapList[regionId].ignore_recruit_window
end

function queryMapInfo(regionId, mapId)
	if __mapList[regionId] == nil then
		return nil, nil, nil, nil, nil, nil
	end
	if __mapList[regionId][mapId] == nil then
		return nil, nil, nil, nil, nil, nil
	end
	return regionId, mapId, __mapList[regionId][mapId].name, __mapList[regionId][mapId].colorR, __mapList[regionId][mapId].colorG, __mapList[regionId][mapId].colorB
end

function getRegionIterator()
	local pos = 1
	return {
		hasNext = function()
			return __mapList[pos]
		end,
		value = function()
			temp_pos = pos
			pos = pos + 1
			return __mapList[temp_pos]
		end
	}
end

function getMapIterator(regionId)
	local pos = 1
	return {
		hasNext = function()
			if __mapList[regionId] == nil then
				return nil
			end
			return __mapList[regionId][pos]
		end,
		value = function()
			temp_pos = pos
			pos = pos + 1
			return __mapList[regionId][temp_pos]
		end
	}
end
makeMapList()

function GetPartyBookingHelp()
	local descript = ""
	local obj = PartyBookingHelp
	if obj ~= nil then
		for i, v in pairs(obj) do
			descript = descript .. v
			descript = descript .. "\r\n"
		end
	end
	return descript
end
