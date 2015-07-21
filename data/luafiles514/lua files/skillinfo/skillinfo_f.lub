--Function #0
GetInheritJob = function(job)
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

--Function #1
GetNeedSkillPosInLua = function(jobID, index, indx)
   local needSkillInfo = NEED_SKILLLIST_FOR_JOB[jobID]
   if needSkillInfo ~= nil then
      needSkillInfo = NEED_SKILLLIST_FOR_JOB[jobID][index]
   else
      return -1
   end
   if needSkillInfo ~= nil then
      needSkillInfo = NEED_SKILLLIST_FOR_JOB[jobID][index].NeedSkillList
   else
      return -1
   end
   if needSkillInfo == nil then
      return -1
   end
   if needSkillInfo[indx] ~= nil then
      return needSkillInfo[indx]
   end
   return -1
end

--Function #2
InitSkillTreeView = function(jobID, arrayNum)
   local skillList = NEED_SKILLLIST_FOR_JOB[jobID]
   if skillList ~= nil then
      for idx, skillInfo in pairs(skillList) do
         c_AddSkillList(jobID, arrayNum, idx, skillInfo[1], skillInfo.Pos, skillInfo.MaxLv, getTableSize(skillInfo.NeedSkillList))
      end
   end
end