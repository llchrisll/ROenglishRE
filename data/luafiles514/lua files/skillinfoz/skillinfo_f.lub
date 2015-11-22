function GetInheritJob(job)
	JobInheritTable = nil
	JobInheritTable = {}
	if job == nil then
		return nil
	end
	local i = 0
	while job ~= nil do
		i = i + 1
		JobInheritTable[i] = job
		job = JOB_INHERIT_LIST[job]
	end
	return i
end
All_NeedSkillList = {}

function CheckNeedSkillList(skillInfo, skillDepth)
	if All_NeedSkillList ~= nil and skillInfo ~= nil then
		local depth = 0
		while All_NeedSkillList[depth] do
			local idx = 1
			t_skillInfo = All_NeedSkillList[depth][idx]
			while t_skillInfo do
				if t_skillInfo[1] == skillInfo[1] then
					if skillDepth > depth then
						return false
					end
					if t_skillInfo[2] < skillInfo[2] then
						All_NeedSkillList[depth][idx] = skillInfo
					end
					return true
				end
				idx = idx + 1
				t_skillInfo = All_NeedSkillList[depth][idx]
			end
			depth = depth + 1
		end
	end
	return false
end

function SetNeedSkillList(SKID, depth)
	local skillInfo = SKILL_INFO_LIST[SKID]
	if skillInfo ~= nill then
		local bIsNeedSkillList = false
		local needSkillList = skillInfo.NeedSkillList
		if needSkillList ~= nil then
			for j, k in pairs(JobInheritTable) do
				local jobID = JOB_INHERIT_LIST2[k]
				if jobID ~= -1 and jobID ~= nil then
					k = jobID
				end
				if needSkillList[k] ~= nil then
					needSkillList = needSkillList[k]
					bIsNeedSkillList = true
					break
				end
			end
		end
		if bIsNeedSkillList == false then
			needSkillList = skillInfo._NeedSkillList
		end
		if needSkillList ~= nil then
			for idx, skill in pairs(needSkillList) do
				if CheckNeedSkillList(skill, depth) == false then
					local listSize = 0
					if All_NeedSkillList[depth] == nil then
						All_NeedSkillList[depth] = {}
					else
						listSize = getTableSize(All_NeedSkillList[depth])
					end
					All_NeedSkillList[depth][listSize + 1] = skill
					SetNeedSkillList(skill[1], depth + 1)
				end
			end
		end
	end
end

function GetSkillInfo(SKID)
	All_NeedSkillList = nil
	All_NeedSkillList = {}
	local skillInfo = SKILL_INFO_LIST[SKID]
	if skillInfo ~= nill then
		local strSkillID = skillInfo[1]
		local strSkillName = skillInfo.SkillName
		local MaxLv = skillInfo.MaxLv
		local UserUpgradable = 1
		if skillInfo.Type == "Quest" or skillInfo.Type == "Soul" then
			UserUpgradable = 0
		end
		SetNeedSkillList(SKID, 0)
		return strSkillID, strSkillName, MaxLv, UserUpgradable
	end
	return "", "", -1, -1
end

function AddNeedSkillList(SKID)
	if All_NeedSkillList ~= nil then
		local depth = 0
		while All_NeedSkillList[depth] do
			local idx = 1
			skillInfo = All_NeedSkillList[depth][idx]
			while skillInfo do
				if skillInfo[2] == nil then
					skillInfo[2] = 0
				end
				c_AddNeedSkillList(SKID, skillInfo[1], skillInfo[2])
				idx = idx + 1
				skillInfo = All_NeedSkillList[depth][idx]
			end
			depth = depth + 1
		end
	end
end

function InitSkillTreeView(jobID, arrayNum)
	local skillList = SKILL_TREEVIEW_FOR_JOB[jobID]
	if skillList ~= nil then
		local skillPos = 0
		local listSize = getTableSize(skillList)
		while listSize > 0 do
			local skillID = skillList[skillPos]
			if skillID ~= nil then
				local strSkillID, strSkillName, MaxLv, UserUpgradable = GetSkillInfo(skillID)
				if strSkillID ~= nil and strSkillID ~= "" then
					c_AddSkillList(arrayNum, skillID, strSkillID, skillPos, MaxLv, UserUpgradable)
					AddNeedSkillList(skillID)
				end
				listSize = listSize - 1
			end
			skillPos = skillPos + 1
		end
	end
end

function GetSkillIdName(SkillID)
	local obj = SKILL_INFO_LIST[SkillID]
	if obj ~= nil then
		obj = SKILL_INFO_LIST[SkillID][1]
	end
	if obj ~= nil then
		return obj
	end
	return ""
end

function GetSkillName(SkillID)
	local obj = SKILL_INFO_LIST[SkillID]
	if obj ~= nil then
		obj = SKILL_INFO_LIST[SkillID].SkillName
	end
	if obj ~= nil then
		return obj
	end
	return ""
end

function IsLevelUseSkill(SkillID)
	local skillInfo = SKILL_INFO_LIST[SkillID]
	local rst
	if skillInfo ~= nil then
		rst = skillInfo.bSeperateLv
		if rst ~= nil then
			return rst
		end
		local spAmount = skillInfo.SpAmount
		if spAmount ~= nil then
			return true
		end
	end
	return false
end

function GetLevelUseSpAmount(SkillID, idx)
	local obj = SKILL_INFO_LIST[SkillID]
	if obj ~= nil then
		obj = SKILL_INFO_LIST[SkillID].SpAmount
	end
	if obj ~= nil then
		obj = SKILL_INFO_LIST[SkillID].SpAmount[idx]
	end
	if obj ~= nil then
		return obj
	end
	return 0
end

function GetSkillDescript(JobID, SKID, bChangeColor)
	local descript = ""
	local obj = SKILL_DESCRIPT[SKID]
	if obj ~= nil then
		for i, v in pairs(obj) do
			s_pos, f_pos = string.find(v, MsgStrID.MSI_SKILL_REQUIREMENTS)
			bCopyText = false
			if s_pos ~= nil then
				s_pos = s_pos - 1
				subStr = string.sub(v, 1, s_pos - 1)
				if bChangeColor == 1 then
					local temp = subStr .. "^FF1493" .. string.sub(v, s_pos + 7, -1)
					v = temp
				end
				if s_pos > 1 then
					for j, k in pairs(JobInheritTable) do
						if subStr == string.format("%d", k) then
							descript = descript .. string.sub(v, s_pos, -1)
							descript = descript .. "\r\n"
							break
						end
					end
				else
					bCopyText = true
				end
			else
				bCopyText = true
			end
			if bCopyText == true then
				descript = descript .. v
				descript = descript .. "\r\n"
			end
		end
	end
	return descript
end

function TestFile(saveFileName)
	saveFile = io.open(saveFileName, "w")
	if saveFile ~= nil and All_NeedSkillList ~= nil then
		local depth = 0
		while All_NeedSkillList[depth] do
			local idx = 1
			skillInfo = All_NeedSkillList[depth][idx]
			while skillInfo do
				saveFile:write(string.format("[%d,%d]\n", skillInfo[1], skillInfo[2]))
				idx = idx + 1
				skillInfo = All_NeedSkillList[depth][idx]
			end
			depth = depth + 1
		end
	end
	io.close(saveFile)
end

function GetSkillAttackRange(in_SKID, in_Level, in_curMaxLv)
	local attackRange = 1
	local attackRangeOfMaxLv = 0
	local maxLv = 0
	local obj = SKILL_INFO_LIST[in_SKID]
	if obj ~= nil then
		obj = SKILL_INFO_LIST[in_SKID].AttackRange
		maxLv = SKILL_INFO_LIST[in_SKID].MaxLv
	end
	if obj ~= nil then
		attackRange = SKILL_INFO_LIST[in_SKID].AttackRange[in_Level]
	end
	if maxLv ~= nil and in_curMaxLv > maxLv then
		in_curMaxLv = maxLv
	end
	obj = SKILL_INFO_LIST[in_SKID]
	if (obj ~= nil and obj.AttackRange ~= nil) then
		attackRangeOfMaxLv = SKILL_INFO_LIST[in_SKID].AttackRange[in_curMaxLv]
	end
	if attackRangeOfMaxLv == nil then
		attackRangeOfMaxLv = 0
	end
	if attackRange ~= nil then
		return attackRange, attackRangeOfMaxLv
	end
	return 1, attackRangeOfMaxLv
end
