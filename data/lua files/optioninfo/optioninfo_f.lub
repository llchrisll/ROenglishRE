function SetCmdOnOffList()
	if CmdOnOffList == nil then
		return
	end
	for k, v in pairs(CmdOnOffOderList) do
		local cmdInfo = CmdOnOffList[v]
		if cmdInfo ~= nil and cmdInfo ~= nil then
			c_SetCmdOnOffList(v, cmdInfo)
		end
	end
end

function l_GetOptionValue(keyName)
	if OptionInfoList == nil then
		return -1
	end
	local optionInfo = OptionInfoList[keyName]
	if optionInfo ~= nil then
		return optionInfo
	end
	return -1
end

function SaveToFileCmdOnOffValue()
	saveFile = io.open("SaveData\\OptionInfo.lua", "w")
	if saveFile ~= nil then
		for k, v in pairs(CmdOnOffOderList) do
			local value = c_GetCmdOnOffValue(v)
			if value ~= -1 then
				saveFile:write(string.format("CmdOnOffList[\"%s\"] = %d\n", v, value))
			end
		end
		saveFile:write("\n")
		io.close(saveFile)
	end
end

function l_GetCmdHelpMsg(keyName, bIsOn)
	if CmdHelpList == nil then
		return ""
	end
	if bIsOn == 1 then
		keyName = keyName .. "_on"
	elseif bIsOn == 0 then
		keyName = keyName .. "_off"
	end
	local cmdHelp = CmdHelpList[keyName]
	if cmdHelp ~= nil then
		return cmdHelp
	end
	return ""
end

function SaveToFileCmdOnOffValueEx(nID)
	if nID == 0 then
		saveFile = io.open("SaveData\\OptionInfo.lua", "w")
	else
		saveFile = io.open("data\\OptionInfo.lua", "w")
	end
	if saveFile ~= nil then
		for k, v in pairs(CmdOnOffOderList) do
			local value = c_GetCmdOnOffValue(v)
			if value ~= -1 then
				saveFile:write(string.format("CmdOnOffList[\"%s\"] = %d\n", v, value))
			end
		end
		saveFile:write("\n")
		io.close(saveFile)
	end
end
