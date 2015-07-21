MSG_SET_INIT = 0
MSG_SET_SPAWNDIR1 = 1
MSG_SET_SPAWNDIR2 = 2
MSG_SET_GRAVITY = 3
MSG_SET_POS = 4
MSG_SET_EMITRADIUS = 5
MSG_SET_COLOR = 6
MSG_SET_EMITRATE = 7
MSG_SET_SIZE = 8
MSG_SET_LIFETIME = 9
MSG_SET_TEXTURE = 10
MSG_SET_SPEED = 11
MSG_SET_SRCMODE = 12
MSG_SET_DESTMODE = 13
MSG_SET_MAXPARTICLE = 14
MSG_SET_TYPE = 15
MSG_SET_AREA = 16
MSG_SET_ANGLE = 17
MSG_SET_RISEANGLE = 18
MSG_SET_ALPHA = 19
MSG_SET_FDA = 20
MSG_SET_HEIGHT0 = 21
MSG_SET_HEIGHT1 = 22
MSG_SET_HEIGHT2 = 23
MSG_SET_HEIGHT3 = 24
MSG_SET_HEIGHT4 = 25
MSG_SET_HEIGHT5 = 26
MSG_SET_HEIGHT6 = 27
MSG_SET_HEIGHT7 = 28
MSG_SET_HEIGHT8 = 29
MSG_SET_HEIGHT9 = 30
MSG_SET_HEIGHT10 = 31
MSG_SET_HEIGHT11 = 32
MSG_SET_HEIGHT12 = 33
MSG_SET_HEIGHT13 = 34
MSG_SET_HEIGHT14 = 35
MSG_SET_HEIGHT15 = 36
MSG_SET_HEIGHT16 = 37
MSG_SET_HEIGHT17 = 38
MSG_SET_HEIGHT18 = 39
MSG_SET_HEIGHT19 = 40
MSG_SET_HEIGHT20 = 41
MSG_SET_SIZE2 = 42

function IsOpenedEmitterInfoFiles ( InfoTableName )
	local EmitterInfoTable = _G[InfoTableName]
	
	if EmitterInfoTable ~= nil then
		return true
	end
	
	return false
end


function ReadTable( InfoTableName, effectId )
	local t = _G[InfoTableName]

	for i = 0, table.getn( t ) do
		CreateEffect( effectId, t[i].pos[1], t[i].pos[2], t[i].pos[3] )
	end

	ReadEmitterInfoz ( InfoTableName )
end

function ReadEmitterInfoz ( InfoTableName )
	local EmitterInfoTable = _G[InfoTableName]
	
	if EmitterInfoTable ~= nil then
		for k, v in pairs( EmitterInfoTable ) do
			SetEffectInfo( k, MSG_SET_MAXPARTICLE, v.maxcount[1] )
			SetEffectInfo( k, MSG_SET_SPAWNDIR1, v.dir1[1], v.dir1[2], v.dir1[3] )
			SetEffectInfo( k, MSG_SET_SPAWNDIR2, v.dir2[1], v.dir2[2], v.dir2[3] )
			SetEffectInfo( k, MSG_SET_GRAVITY, v.gravity[1], v.gravity[2], v.gravity[3] )
			--SetEffectInfo( k, MSG_SET_POS, v.pos[1], v.pos[2], v.pos[3] )
			SetEffectInfo( k, MSG_SET_EMITRADIUS, v.radius[1], v.radius[2], v.radius[3] )
			SetEffectInfo( k, MSG_SET_COLOR, v.color[1], v.color[2], v.color[3], v.color[4] )
			SetEffectInfo( k, MSG_SET_EMITRATE, v.rate[1], v.rate[2], v.rate[3] )
			SetEffectInfo( k, MSG_SET_SIZE, v.size[1], v.size[2], v.size[3] )
			SetEffectInfo( k, MSG_SET_LIFETIME, v.life[1], v.life[2], v.life[3] )
			SetEffectInfo( k, MSG_SET_TEXTURE, v.texture )
			SetEffectInfo( k, MSG_SET_SPEED, v.speed[1] )
			SetEffectInfo( k, MSG_SET_SRCMODE, v.srcmode[1] )
			SetEffectInfo( k, MSG_SET_DESTMODE, v.destmode[1] )
			SetEffectInfo( k, MSG_SET_INIT )
		end
	end
end

-- 다른 이팩트 로딩 관련 함수.
function IsOpenedEffectFiles ( InfoTableName )
	local EffectInfoTable = _G[InfoTableName]
	
	if EffectInfoTable ~= nil then
		return true
	end
	
	return false
end

function ReadOtherTable( InfoTableName )
	local t = _G[InfoTableName]

	for i = 0, table.getn( t ) do
		CreateEffect( t[i].Type[1], t[i].pos[1], t[i].pos[2], t[i].pos[3] )
	end

	ReadEffectInfoz ( InfoTableName )
end

function ReadEffectInfoz ( InfoTableName )
	local EffectInfoTable = _G[InfoTableName]
	
	if EffectInfoTable ~= nil then
		for k, v in pairs( EffectInfoTable ) do
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_TYPE , v.Type[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_AREA, v.Speed[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_SIZE2, v.Size[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_ANGLE, v.Angle[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_RISEANGLE, v.RiseAngle[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_ALPHA, v.Alpha[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_FDA, v.FullDisplayAngle[1] )
			--SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_POS, v.pos[1], v.pos[2], v.pos[3] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT0, v.Height0[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT1, v.Height1[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT2, v.Height2[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT3, v.Height3[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT4, v.Height4[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT5, v.Height5[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT6, v.Height6[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT7, v.Height7[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT8, v.Height8[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT9, v.Height9[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT10, v.Height10[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT11, v.Height11[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT12, v.Height12[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT13, v.Height13[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT14, v.Height14[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT15, v.Height15[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT16, v.Height16[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT17, v.Height17[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT18, v.Height18[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT19, v.Height19[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_HEIGHT20, v.Height20[1] )
			SetOtherEffectInfo( v.Type[1],v.ID[1], MSG_SET_INIT )
		end
	end
end