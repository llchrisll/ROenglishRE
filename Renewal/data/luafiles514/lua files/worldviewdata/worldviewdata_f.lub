function queryWorld_List(Index)
	if World_List[Index] == nil then
		return nil, nil, nil, nil
	end
	return World_List[Index][1], World_List[Index][2], World_List[Index][3], World_List[Index][4]
end

function querymaptable_load(t, Index)
	local table = _G[t]
	if nil == table[Index] then
		return nil, nil, nil, nil, nil, nil, nil, nil
	end
	return table[Index][1], table[Index][2], table[Index][3], table[Index][4], table[Index][5], table[Index][6], table[Index][7], table[Index][8]
end

function queryfieldtable_load(t, Index)
	local table = _G[t]
	if nil == table[Index] then
		return nil, nil, nil, nil, nil, nil, nil
	end
	return table[Index][1], table[Index][2], table[Index][3], table[Index][4], table[Index][5], table[Index][6], table[Index][7]
end
