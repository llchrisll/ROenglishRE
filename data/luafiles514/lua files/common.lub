function toInt(value)
	if value ~= nill then
		return value
	else
		return 0
	end
end

function toStr(value)
	if value ~= nill then
		return value
	else
		return ""
	end
end

function getTableSize(t)
	local size = 0
	for _, _ in pairs(t) do
		size = size + 1
	end
	return size
end

function GetTableSizeForC(tableName)
	local t = _G[tableName]
	local size = 0
	if t ~= nil then
		for _, _ in pairs(t) do
			size = size + 1
		end
	end
	return size
end

function getHelpMsg(idx)
	if HelpMsgStr == nil then
		return ""
	end
	if HelpMsgStr[idx] == nil then
		return ""
	end
	return HelpMsgStr[idx]
end
