ChangeDirectoryList = {
	{ "RixSquirrel_12.eot", "data", "System\\Font" },
	{ "RixMiniHeart_10.eot", "data", "System\\Font" },
	{ "RixNHCgogo_10.eot", "data", "System\\Font" },
	{ "RixSquirrel_10.eot", "data", "System\\Font" },
	{ "RixMagic_10.eot", "data", "System\\Font" },
	{ "RixLoveangel_10.eot", "data", "System\\Font" },
	{ "RixLoveangel_12.eot", "data", "System\\Font" },
	{ "RixJJangu_10.eot", "data", "System\\Font" },
	{ "RixKid_10.eot", "data", "System\\Font" },
	{ "RixFreshman_10.eot", "data", "System\\Font" },
	{ "NHCgogo_10.eot", "data", "System\\Font" },
	{ "NHCgogo_12.eot", "data", "System\\Font" },
	{ "RixDiary_10.eot", "data", "System\\Font" },
	{ "OptionInfo.lua", "data", "SaveData" },
	{ "ChatWndInfo_U.lua", "data", "SaveData" },
	{ "UserKeys.lua", "data", "SaveData" },
	{ "UserKeys_s.lua", "data", "SaveData" }
}

function ChangeDirectoryOfFiles()
	if ChangeDirectoryList ~= nil then
		local idx = 1
		fileInfo = ChangeDirectoryList[idx]
		while fileInfo do
			c_ChangeDirectoryOfDatas(fileInfo[1], fileInfo[2], fileInfo[3])
			idx = idx + 1
			fileInfo = ChangeDirectoryList[idx]
		end
	end
end
ChangeDirectoryOfFiles()
