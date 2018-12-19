function InsertEmotionListTable(emotionType, MsgStrID, actionNum)
	EmotionList[emotionType] = {}
	EmotionList[emotionType].actionNum = actionNum
	if MsgStrID ~= -1 then
		msgStr = c_GetMsgString(MsgStrID)
		if msgStr ~= nil and msgStr ~= "" then
			EmotionList[emotionType].msgStr = msgStr
		end
	end
end

function InsertEmotionMsgListTable(emotionType, MsgStr)
	if MsgStr ~= nil and MsgStr ~= "" then
		EmotionMsgList[MsgStr] = {}
		EmotionMsgList[MsgStr] = emotionType
	end
end

function GetEmotionMsg(index)
	local emotionType = EMOTION_ORDERLIST[index + 1]
	if emotionType ~= nil then
		do
			local emotionMsg = EmotionList[emotionType].msgStr
			if emotionMsg ~= nil then
				return emotionMsg
			else
				return ""
			end
		end
	else
		return ""
	end
end

function GetEmotionActionByWndIdx(index)
	local emotionType = EMOTION_ORDERLIST[index + 1]
	if emotionType ~= nil then
		do
			local emotionAction = EmotionList[emotionType].actionNum
			if emotionAction ~= nil then
				return emotionAction
			else
				return -1
			end
		end
	else
		return -1
	end
end

function GetEmotionAction(emotionType)
	local emotionAction = EmotionList[emotionType].actionNum
	if emotionAction ~= nil then
		return emotionAction
	else
		return -1
	end
end

function ReqEmotionByIndex(index)
	local emotionType = EMOTION_ORDERLIST[index + 1]
	if emotionType ~= nil and emotionType >= 0 then
		c_ReqEmotion(emotionType)
	end
end

function ReqEmotionByMsgStr(msgStr)
	local emotionType = EmotionMsgList[msgStr]
	if emotionType ~= nil and emotionType >= 0 then
		c_ReqEmotion(emotionType)
		return emotionType
	else
		return -1
	end
end

function GetEmotionOrderListSize()
	return getTableSize(EMOTION_ORDERLIST)
end
