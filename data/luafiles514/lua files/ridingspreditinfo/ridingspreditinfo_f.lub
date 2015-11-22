HeadSprEditInfo = {}
BodySprEditInfo = {}

function GetHeadSprEditInfo(jobID, curAction, curMotion)
	return GetRidingSprEditInfo(HeadSprEditInfo, jobID, curAction, curMotion)
end

function GetBodySprEditInfo(jobID, curAction, curMotion)
	return GetRidingSprEditInfo(BodySprEditInfo, jobID, curAction, curMotion)
end

function GetRidingSprEditInfo(RidingSprEditInfoTable, jobID, curAction, curMotion)
	local xGap = 0
	local yGap = 0
	if RidingSprEditInfoTable[jobID] ~= nil and RidingSprEditInfoTable[jobID][curAction] ~= nil and RidingSprEditInfoTable[jobID][curAction][curMotion] ~= nil then
		if RidingSprEditInfoTable[jobID][curAction][curMotion].xGap ~= nil then
			xGap = RidingSprEditInfoTable[jobID][curAction][curMotion].xGap
		end
		if RidingSprEditInfoTable[jobID][curAction][curMotion].yGap ~= nil then
			yGap = RidingSprEditInfoTable[jobID][curAction][curMotion].yGap
		end
	end
	return xGap, yGap
end

function SetHeadSprEditInfo(jobID, nStartAction, nFinishAction, nStartMotion, nFinishMotion, xGap, yGap)
	SetRidingSprEditInfo(HeadSprEditInfo, jobID, nStartAction, nFinishAction, nStartMotion, nFinishMotion, xGap, yGap)
end

function SetBodySprEditInfo(jobID, nStartAction, nFinishAction, nStartMotion, nFinishMotion, xGap, yGap)
	SetRidingSprEditInfo(BodySprEditInfo, jobID, nStartAction, nFinishAction, nStartMotion, nFinishMotion, xGap, yGap)
end

function SetRidingSprEditInfo(RidingSprEditInfoTable, jobID, nStartAction, nFinishAction, nStartMotion, nFinishMotion, xGap, yGap)
	if RidingSprEditInfoTable[jobID] == nil then
		RidingSprEditInfoTable[jobID] = {}
	end
	local curAction = nStartAction
	while nFinishAction >= curAction do
		if RidingSprEditInfoTable[jobID][curAction] == nil then
			RidingSprEditInfoTable[jobID][curAction] = {}
		end
		local curMotion = nStartMotion
		while nFinishMotion >= curMotion do
			if RidingSprEditInfoTable[jobID][curAction][curMotion] == nil then
				RidingSprEditInfoTable[jobID][curAction][curMotion] = {}
			end
			if xGap ~= nil and xGap ~= 0 then
				RidingSprEditInfoTable[jobID][curAction][curMotion].xGap = xGap
			end
			if yGap ~= nil and yGap ~= 0 then
				RidingSprEditInfoTable[jobID][curAction][curMotion].yGap = yGap
			end
			curMotion = curMotion + 1
		end
		curAction = curAction + 1
	end
end

function GetHeadOow(jobID, curAction, curMotion)
	return 0
end

function GetBodyOow(jobID, curAction, curMotion)
	return 0
end

function SetBodySprEditInfo_THIEFS()
	SetBodySprEditInfo_SETA(pcJobTbl.JT_SORCERER)
	SetBodySprEditInfo_SETA(pcJobTbl.JT_SORCERER_B)
	SetBodySprEditInfo_SETA(pcJobTbl.JT_SORCERER_H)
	SetBodySprEditInfo_SETA(4132)
	SetBodySprEditInfo_SETA(4176)
	SetBodySprEditInfo_SETA(pcJobTbl.JT_SHADOW_CHASER)
	SetBodySprEditInfo_SETA(pcJobTbl.JT_SHADOW_CHASER_B)
	SetBodySprEditInfo_SETA(pcJobTbl.JT_SHADOW_CHASER_H)
	SetBodySprEditInfo_SETA(4143)
	SetBodySprEditInfo_SETA(4182)
	SetBodySprEditInfo_SETA(pcJobTbl.JT_ROGUE)
	SetBodySprEditInfo_SETA(pcJobTbl.JT_ROGUE_B)
	SetBodySprEditInfo_SETA(pcJobTbl.JT_ROGUE_H)
	SetBodySprEditInfo_SETA(pcJobTbl.JT_ASSASSIN_H)
	SetBodySprEditInfo_SETA(4142)
	SetBodySprEditInfo_SETA(4168)
	SetBodySprEditInfo_SETA(4144)
	SetBodySprEditInfo_SETA(4146)
	SetBodySprEditInfo_SETA(pcJobTbl.JT_THIEF)
	SetBodySprEditInfo_SETA(pcJobTbl.JT_THIEF_B)
	SetBodySprEditInfo_SETA(pcJobTbl.JT_THIEF_H)
	SetBodySprEditInfo_SETA(4141)
	SetBodySprEditInfo_SETA(4189)
	SetBodySprEditInfo_SETA(4181)
	SetBodySprEditInfo_SETA(pcJobTbl.JT_GUILLOTINE_CROSS)
	SetBodySprEditInfo_SETA(pcJobTbl.JT_GUILLOTINE_CROSS_B)
	SetBodySprEditInfo_SETA(pcJobTbl.JT_GUILLOTINE_CROSS_H)
	SetBodySprEditInfo_SETA(4140)
	SetBodySprEditInfo_SETA(4175)
	SetBodySprEditInfo_SETC(pcJobTbl.JT_MAGICIAN)
	SetBodySprEditInfo_SETC(pcJobTbl.JT_MAGICIAN_B)
	SetBodySprEditInfo_SETC(pcJobTbl.JT_MAGICIAN_H)
	SetBodySprEditInfo_SETC(4130)
	SetBodySprEditInfo_SETC(4160)
	SetBodySprEditInfo_SETC(4185)
end

function SetBodySprEditInfo_SETA(jobID)
	SetBodySprEditInfo(jobID, 0, 7, 0, 2, 0, 15)
	SetBodySprEditInfo(jobID, 8, 15, 0, 7, 0, 15)
	SetBodySprEditInfo(jobID, 17, 23, 0, 2, 0, 20)
	SetBodySprEditInfo(jobID, 24, 31, 0, 2, 0, 15)
	SetBodySprEditInfo(jobID, 32, 39, 0, 5, 0, 15)
	SetBodySprEditInfo(jobID, 40, 47, 0, 4, 0, 15)
	SetBodySprEditInfo(jobID, 48, 55, 0, 2, 0, 15)
	SetBodySprEditInfo(jobID, 56, 63, 0, 0, 0, 15)
	SetBodySprEditInfo(jobID, 72, 79, 0, 0, 0, 15)
	SetBodySprEditInfo(jobID, 80, 87, 0, 8, 0, 15)
	SetBodySprEditInfo(jobID, 88, 95, 0, 7, 0, 15)
	SetBodySprEditInfo(jobID, 96, 103, 0, 5, 0, 15)
end

function SetBodySprEditInfo_SETC(jobID)
	SetBodySprEditInfo(jobID, 0, 7, 0, 2, 0, 10)
	SetBodySprEditInfo(jobID, 8, 15, 0, 7, 0, 10)
	SetBodySprEditInfo(jobID, 17, 23, 0, 2, 0, 10)
	SetBodySprEditInfo(jobID, 24, 31, 0, 2, 0, 10)
	SetBodySprEditInfo(jobID, 32, 39, 0, 5, 0, 10)
	SetBodySprEditInfo(jobID, 40, 47, 0, 4, 0, 10)
	SetBodySprEditInfo(jobID, 48, 55, 0, 2, 0, 10)
	SetBodySprEditInfo(jobID, 56, 63, 0, 0, 0, 10)
	SetBodySprEditInfo(jobID, 72, 79, 0, 0, 0, 10)
	SetBodySprEditInfo(jobID, 80, 87, 0, 8, 0, 10)
	SetBodySprEditInfo(jobID, 88, 95, 0, 7, 0, 10)
	SetBodySprEditInfo(jobID, 96, 103, 0, 5, 0, 10)
end

function SetBodySprEditInfo_ACOLYTES()
	SetBodySprEditInfo_SETB(pcJobTbl.JT_ACOLYTE)
	SetBodySprEditInfo_SETB(pcJobTbl.JT_ACOLYTE_B)
	SetBodySprEditInfo_SETB(pcJobTbl.JT_ACOLYTE_H)
	SetBodySprEditInfo_SETB(4126)
	SetBodySprEditInfo_SETB(4162)
	SetBodySprEditInfo_SETB(4187)
	SetBodySprEditInfo_SETB(pcJobTbl.JT_PRIEST)
	SetBodySprEditInfo_SETB(pcJobTbl.JT_PRIEST_B)
	SetBodySprEditInfo_SETB(pcJobTbl.JT_PRIEST_H)
	SetBodySprEditInfo_SETB(4156)
	SetBodySprEditInfo_SETB(4157)
	SetBodySprEditInfo_SETB(pcJobTbl.JT_SURA)
	SetBodySprEditInfo_SETB(pcJobTbl.JT_SURA_B)
	SetBodySprEditInfo_SETB(pcJobTbl.JT_SURA_H)
	SetBodySprEditInfo_SETB(4127)
	SetBodySprEditInfo_SETB(4179)
	SetBodySprEditInfo_SETB(pcJobTbl.JT_ARCHBISHOP)
	SetBodySprEditInfo_SETB(pcJobTbl.JT_ARCHBISHOP_B)
	SetBodySprEditInfo_SETB(pcJobTbl.JT_ARCHBISHOP_H)
	SetBodySprEditInfo_SETB(4129)
	SetBodySprEditInfo_SETB(4174)
	SetBodySprEditInfo_SETB(pcJobTbl.JT_MONK)
	SetBodySprEditInfo_SETB(pcJobTbl.JT_MONK_B)
	SetBodySprEditInfo_SETB(pcJobTbl.JT_MONK_H)
	SetBodySprEditInfo_SETB(4125)
	SetBodySprEditInfo_SETB(4166)
	SetBodySprEditInfo_SETB(4139)
end

function SetBodySprEditInfo_SETB(jobID)
	SetBodySprEditInfo(jobID, 0, 7, 0, 2, 0, 10)
	SetBodySprEditInfo(jobID, 8, 15, 0, 7, 0, 15)
	SetBodySprEditInfo(jobID, 32, 39, 0, 5, 0, 5)
	SetBodySprEditInfo(jobID, 40, 47, 0, 4, 0, 5)
	SetBodySprEditInfo(jobID, 72, 79, 0, 0, 0, 5)
	SetBodySprEditInfo(jobID, 80, 87, 0, 8, 0, 5)
	SetBodySprEditInfo(jobID, 88, 95, 0, 7, 0, 5)
	SetBodySprEditInfo(jobID, 96, 103, 0, 5, 0, 5)
end
