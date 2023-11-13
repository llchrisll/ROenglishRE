@echo off
echo Welcome to the Additions Generator!
echo This will help you to copy over the files you want and need based on the choice you make.
echo It will loop itself until you either close the program or choose to exit it by typing any number higher than available.
pause
:AdditionsMenu
cls
echo ===============
echo [1] Data Folder
echo [2] data\luafiles514
echo [3] System Folder
echo ===============
set /p type="Now choose:"
if %type%==1 goto DataMenu
if %type%==2 goto DataLua
if %type%==3 goto SysLua
exit

:DataMenu
	cls
	echo ===============
	echo [1] bookitemnametable.txt %datac[0]%
	echo [2] buyingstoreitemlist.txt %datac[1]%
	echo [3] card*.txt %datac[2]%
	echo [4] etcinfo.txt %datac[3]%
	echo [5] exceptionminimapnametable.txt %datac[4]%
	echo [6] fogParameterTable.txt %datac[5]%
	echo [7] indoorrswtable.txt %datac[6]%
	echo [8] itemmoveinfov5.txt %datac[7]%
	echo [9] leveluseskillspamount.txt %datac[8]%
	echo [10] manner.txt %datac[9]%
	echo [11] mapobjlighttable.txt %datac[10]%
	echo [12] mappostable.txt %datac[11]%
	echo [13] metalprocessitemtable.txt %datac[12]%
	echo [14] mp3nametable.txt %datac[13]%
	echo [15] resnametable.txt %datac[14]%
	echo [16] viewpointtable.txt %datac[15]%
	echo [17] Legacy Airship Maps %datac[16]%
	echo [18] Back to previous Menu
	echo ===============
	set /p data="Now choose:"
	if %data%==1 (
		copy /Y "..\Additions\data\bookitemnametable.txt" ".\Client\data\bookitemnametable.txt"
		set datac[0]=Copied
	) else if %data%==2 (
		copy /Y "..\Additions\data\buyingstoreitemlist.txt" ".\Client\data\buyingstoreitemlist.txt"
		set datac[1]=Copied
	) else if %data%==3 (
		copy /Y "..\Additions\data\carditemnametable.txt" ".\Client\data\carditemnametable.txt"
		copy /Y "..\Additions\data\cardpostfixnametable.txt" ".\Client\data\cardpostfixnametable.txt"
		copy /Y "..\Additions\data\num2cardillustnametable.txt" ".\Client\data\num2cardillustnametable.txt"
		set datac[2]=Copied
	) else if %data%==4 (
		copy /Y "..\Additions\data\etcinfo.txt" ".\Client\data\etcinfo.txt"
		set datac[3]=Copied
	) else if %data%==5 (
		copy /Y "..\Additions\data\exceptionminimapnametable.txt" ".\Client\data\exceptionminimapnametable.txt"
		set datac[4]=Copied
	) else if %data%==6 (
		copy /Y "..\Additions\data\fogParameterTable.txt" ".\Client\data\fogParameterTable.txt"
		set datac[5]=Copied
	) else if %data%==7 (
		copy /Y "..\Additions\data\indoorrswtable.txt" ".\Client\data\indoorrswtable.txt"
		set datac[6]=Copied
	) else if %data%==8 (
		copy /Y "..\Additions\data\itemmoveinfov5.txt" ".\Client\data\itemmoveinfov5.txt"
		set datac[7]=Copied
	) else if %data%==9 (
		copy /Y "..\Additions\data\leveluseskillspamount.txt" ".\Client\data\leveluseskillspamount.txt"
		set datac[8]=Copied
	) else if %data%==10 (
		copy /Y "..\Additions\data\manner.txt" ".\Client\data\manner.txt"
		set datac[9]=Copied
	) else if %data%==11 (
		copy /Y "..\Additions\data\mapobjlighttable.txt" ".\Client\data\mapobjlighttable.txt"
		set datac[10]=Copied
	) else if %data%==12 (
		copy /Y "..\Additions\data\mappostable.txt" ".\Client\data\mappostable.txt"
		set datac[11]=Copied
	) else if %data%==13 (
		copy /Y "..\Additions\data\metalprocessitemtable.txt" ".\Client\data\metalprocessitemtable.txt"
		set datac[12]=Copied
	) else if %data%==14 (
		copy /Y "..\Additions\data\mp3nametable.txt" ".\Client\data\mp3nametable.txt"
		set datac[13]=Copied
	) else if %data%==15 (
		copy /Y "..\Additions\data\resnametable.txt" ".\Client\data\resnametable.txt"
		set datac[14]=Copied
	) else if %data%==16 (
		copy /Y "..\Additions\data\viewpointtable.txt" ".\Client\data\viewpointtable.txt"
		set datac[15]=Copied
	) else if %data%==17 (
		copy /Y "..\Additions\data\einbroch.gat" ".\Client\data\einbroch.gat"
		copy /Y "..\Additions\data\einbroch.gnd" ".\Client\data\einbroch.gnd"
		copy /Y "..\Additions\data\einbroch.rsw" ".\Client\data\einbroch.rsw"
		copy /Y "..\Additions\data\lighthalzen.gat" ".\Client\data\lighthalzen.gat"
		copy /Y "..\Additions\data\lighthalzen.gnd" ".\Client\data\lighthalzen.gnd"
		copy /Y "..\Additions\data\lighthalzen.rsw" ".\Client\data\lighthalzen.rsw"
		copy /Y "..\Additions\data\yuno.gat" ".\Client\data\yuno.gat"
		copy /Y "..\Additions\data\yuno.gnd" ".\Client\data\yuno.gnd"
		copy /Y "..\Additions\data\yuno.rsw" ".\Client\data\yuno.rsw"
		set datac[16]=Copied
	) else if %data%==18 goto AdditionsMenu
	else exit
	goto DataMenu

:DataLua
	cls
	echo ===============
	echo [1] Headgears %lua_c[0]%
	echo [2] changedirectorylist.lub %lua_c[1]%
	echo [3] DrawItemOnAura.lub %lua_c[2]%
	echo [4] enumvar.lub %lua_c[3]%
	echo [5] exceptionitemproducer.lub %lua_c[4]%
	echo [6] NPC/Mob and Pets %lua_c[5]%
	echo [7] kaframovemapservicelist.lub %lua_c[6]%
	echo [8] npclocationradius.lub %lua_c[7]%
	echo [9] shadowtable.lub %lua_c[8]%
	echo [10] Robes/Costume Garments %lua_c[9]%
	echo [11] tb_cashshop_banner.lub %lua_c[10]%
	echo [12] tb_checkattendance_banner.lub %lua_c[11]%
	echo [13] Weapons %lua_c[12]%
	echo [14] World Map %lua_c[13]%
	echo [15] effecttool\forcerendereffect.lub %lua_c[14]%
	echo [16] Hateffectinfo %lua_c[15]%
	echo [17] skilleffectinfo %lua_c[16]%
	echo [18] skillinfoz %lua_c[17]%
	echo [19] stateicon %lua_c[18]%
	echo [20] stylingshop %lua_c[19]%
	echo [21] ItemDBNameTbl %lua_c[20]%
	echo [22] Back to previous Menu
	echo ===============
	set /p lua="Now choose:"
	if %lua%==1 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\accessoryid.lub" ".\Client\data\luafiles514\lua files\datainfo\accessoryid.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\accname.lub" ".\Client\data\luafiles514\lua files\datainfo\accname.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\accname_eng.lub" ".\Client\data\luafiles514\lua files\datainfo\accname_eng.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\accname_f.lub" ".\Client\data\luafiles514\lua files\datainfo\accname_f.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\tb_layer_priority.lub" ".\Client\data\luafiles514\lua files\datainfo\tb_layer_priority.lub"
		set lua_c[0]=Copied
	) else if %lua%==2 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\changedirectorylist.lub" ".\Client\data\luafiles514\lua files\datainfo\changedirectorylist.lub"
		set lua_c[1]=Copied
	) else if %lua%==3 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\DrawItemOnAura.lub" ".\Client\data\luafiles514\lua files\datainfo\DrawItemOnAura.lub"
		set lua_c[2]=Copied
	) else if %lua%==4 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\enumvar.lub" ".\Client\data\luafiles514\lua files\datainfo\enumvar.lub"
		set lua_c[3]=Copied
	) else if %lua%==5 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\exceptionitemproducer.lub" ".\Client\data\luafiles514\lua files\datainfo\exceptionitemproducer.lub"
		set lua_c[4]=Copied
	) else if %lua%==6 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\jobidentity.lub" ".\Client\data\luafiles514\lua files\datainfo\jobidentity.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\jobname.lub" ".\Client\data\luafiles514\lua files\datainfo\jobname.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\npcidentity.lub" ".\Client\data\luafiles514\lua files\datainfo\npcidentity.lub"
		set lua_c[5]=Copied
	) else if %lua%==7 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\kaframovemapservicelist.lub" ".\Client\data\luafiles514\lua files\datainfo\kaframovemapservicelist.lub"
		set lua_c[6]=Copied
	) else if %lua%==8 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\npclocationradius.lub" ".\Client\data\luafiles514\lua files\datainfo\npclocationradius.lub"
		set lua_c[7]=Copied
	) else if %lua%==9 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\shadowtable.lub" ".\Client\data\luafiles514\lua files\datainfo\shadowtable.lub"
		set lua_c[8]=Copied
	) else if %lua%==10 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\spriterobeid.lub" ".\Client\data\luafiles514\lua files\datainfo\spriterobeid.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\spriterobename.lub" ".\Client\data\luafiles514\lua files\datainfo\spriterobename.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\transparentItem\transparentItem.lub" ".\Client\data\luafiles514\lua files\transparentItem\transparentItem.lub"
		set lua_c[9]=Copied
	) else if %lua%==11 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\tb_cashshop_banner.lub" ".\Client\data\luafiles514\lua files\datainfo\tb_cashshop_banner.lub"
		set lua_c[10]=Copied
	) else if %lua%==12 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\tb_checkattendance_banner.lub" ".\Client\data\luafiles514\lua files\datainfo\tb_checkattendance_banner.lub"
		set lua_c[11]=Copied
	) else if %lua%==13 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\weapontable.lub" ".\Client\data\luafiles514\lua files\datainfo\weapontable.lub"
		set lua_c[12]=Copied
	) else if %lua%==14 (
		copy /Y "..\Additions\data\luafiles514\lua files\worldviewdata\worldviewdata_info.lub" ".\Client\data\luafiles514\lua files\worldviewdata\worldviewdata_info.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\worldviewdata\worldviewdata_table.lub" ".\Client\data\luafiles514\lua files\worldviewdata\worldviewdata_table.lub"
		set lua_c[13]=Copied
	) else if %lua%==15 (
		copy /Y "..\Additions\data\luafiles514\lua files\effecttool\forcerendereffect.lub" ".\Client\data\luafiles514\lua files\effecttool\forcerendereffect.lub"
		set lua_c[14]=Copied
	) else if %lua%==16 (
		copy /Y "..\Additions\data\luafiles514\lua files\hateffectinfo\hateffectinfo.lub" ".\Client\data\luafiles514\lua files\hateffectinfo\hateffectinfo.lub"
		set lua_c[15]=Copied
	) else if %lua%==17 (
		copy /Y "..\Additions\data\luafiles514\lua files\skilleffectinfo\actorstate.lub" ".\Client\data\luafiles514\lua files\skilleffectinfo\actorstate.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\skilleffectinfo\effectid.lub" ".\Client\data\luafiles514\lua files\skilleffectinfo\effectid.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\skilleffectinfo\skilleffectinfolist.lub" ".\Client\data\luafiles514\lua files\skilleffectinfo\skilleffectinfolist.lub"
		set lua_c[16]=Copied
	) else if %lua%==18 (
		copy /Y "..\Additions\data\luafiles514\lua files\skillinfoz\jobinheritlist.lub" ".\Client\data\luafiles514\lua files\skillinfoz\jobinheritlist.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\skillinfoz\skillid.lub" ".\Client\data\luafiles514\lua files\skillinfoz\skillid.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\skillinfoz\skilltreeview.lub" ".\Client\data\luafiles514\lua files\skillinfoz\skilltreeview.lub"
		set lua_c[17]=Copied
	) else if %lua%==19 (
		copy /Y "..\Additions\data\luafiles514\lua files\stateicon\efstids.lub" ".\Client\data\luafiles514\lua files\stateicon\efstids.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\stateicon\stateiconimginfo.lub" ".\Client\data\luafiles514\lua files\stateicon\stateiconimginfo.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\stateicon\stateiconinfo.lub" ".\Client\data\luafiles514\lua files\stateicon\stateiconinfo.lub"
		set lua_c[18]=Copied
	) else if %lua%==20 (
		copy /Y "..\Additions\data\luafiles514\lua files\stylingshop\stylingshopinfo.lub" ".\Client\data\luafiles514\lua files\stylingshop\stylingshopinfo.lub"
		set lua_c[19]=Copied
	) else if %lua%==21 (
		copy /Y "..\Additions\data\luafiles514\lua files\ItemDBNameTbl.lub" ".\Client\data\luafiles514\lua files\ItemDBNameTbl.lub"
		set lua_c[20]=Copied
	) else if %lua%==22 goto AdditionsMenu
	else exit
	goto DataLua
	
:SysLua
	cls
	echo ===============
	echo [1] ChangeMaterial_EN.lub %sys_c[0]%
	echo [2] CheckAttendance_EN.lub %sys_c[1]%
	echo [3] monster_size_effect_EN.lub %sys_c[2]%
	echo [4] PetEvolutionCln_true_E.lub %sys_c[3]%
	echo [5] PrivateAirplane_T_EN.lub %sys_c[4]%
	echo [6] Sign_Data_CLS.lub %sys_c[5]%
	::echo [7] Rune Folder %sys_c[6]%
	echo [8] Back to previous Menu
	echo ===============
	set /p sys="Now choose:"
	if %sys%==1 (
		copy /Y "..\Additions\System\ChangeMaterial_EN.lub" ".\Client\System\ChangeMaterial_EN.lub"
		set sys_c[0]=Copied
	) else if %sys%==2 (
		copy /Y "..\Additions\System\CheckAttendance_EN.lub" ".\Client\System\CheckAttendance_EN.lub"
		set sys_c[1]=Copied
	) else if %sys%==3 (
		copy /Y "..\Additions\System\monster_size_effect_EN.lub" ".\Client\System\monster_size_effect_EN.lub"
		set sys_c[2]=Copied
	) else if %sys%==4 (
		copy /Y "..\Additions\System\PetEvolutionCln_true_E.lub" ".\Client\System\PetEvolutionCln_true_E.lub"
		set sys_c[3]=Copied
	) else if %sys%==5 (
		copy /Y "..\Additions\System\PrivateAirplane_T_EN.lub" ".\Client\System\PrivateAirplane_T_EN.lub"
		set sys_c[4]=Copied
	) else if %sys%==6 (
		copy /Y "..\Additions\System\Sign_Data_CLS.lub" ".\Client\System\Sign_Data_CLS.lub"
		set sys_c[5]=Copied
	) else if %sys%==7 (
		copy /Y "..\Additions\System\Rune\itemDecom_EN.lub" ".\Client\System\Rune\itemDecom_EN.lub"
		copy /Y "..\Additions\System\Rune\rune_info_EN.lub" ".\Client\System\Rune\rune_info_EN.lub"
		copy /Y "..\Additions\System\Rune\runeset_info_EN.lub" ".\Client\System\Rune\runeset_info_EN.lub"
		copy /Y "..\Additions\System\Rune\runeSystem_table_EN.lub" ".\Client\System\Rune\runeSystem_table_EN.lub"
		copy /Y "..\Additions\System\Rune\runesystemid_EN.lub" ".\Client\System\Rune\runesystemid_EN.lub"
		copy /Y "..\Additions\System\Rune\runesystemInfo_EN.lub" ".\Client\System\Rune\runesystemInfo_EN.lub"
		set sys_c[6]=Copied
	) else if %sys%==8 goto AdditionsMenu
	else exit
	goto SysLua
pause