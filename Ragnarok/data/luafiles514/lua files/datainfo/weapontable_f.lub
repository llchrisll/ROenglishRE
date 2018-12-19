function ReqWeaponName(index)
	if WeaponNameTable == nil then
		return ""
	end
	local NameMsg = WeaponNameTable[index]
	if NameMsg ~= nil then
		return NameMsg
	else
		return ""
	end
end

function ReqWeaponNameByClassNum(classNum)
	if classNum == nil then
		return ""
	end
	local NameMsg = WeaponNameTable[classNum]
	if NameMsg ~= nil then
		return NameMsg
	else
		return ""
	end
end

function GetRealWeaponId(weaponId)
	if weaponId == nil then
		return 0
	end
	local id = Expansion_Weapon_IDs[weaponId]
	if id ~= nil then
		return id
	else
		return weaponId
	end
end

function ReqWeaponHitWaveName(index)
	if WeaponHitWaveNameTable == nil then
		return ""
	end
	local NameMsg = WeaponHitWaveNameTable[index]
	if NameMsg ~= nil then
		return NameMsg
	else
		return ""
	end
end

function IsItemUsingArrow ( type )
	for k, val in ipairs( BowTypeList ) do
		if ( type == val ) then
			return true
		end
	end

	return false
end
