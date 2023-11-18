@echo off
echo =================================================================
echo Welcome to the Additions Generator!
echo This will help you to copy over the files you want and need based on the choice you make.
echo It will loop itself until you close the program or choose Exit.
echo =================================================================
pause
:AdditionsMenu
cls
echo =================================================================
echo [1] Data Folder
echo [2] data\luafiles514
echo [3] System Folder
echo [4] Legacy Maps
echo [5] Exit
echo =================================================================
set /p type="Now choose:"
if %type%==1 goto DataMenu
if %type%==2 goto DataLua
if %type%==3 goto SysLua
if %type%==4 goto DataMaps
exit

:DataMenu
	cls
	echo =================================================================
	echo Data Folder
	echo =================================================================
	echo [0] Back to previous Menu
	echo [1] All in One Package %datac[0]%
	echo [2] bookitemnametable.txt %datac[1]%
	echo [3] buyingstoreitemlist.txt %datac[2]%
	echo [4] card*.txt %datac[3]%
	echo [5] etcinfo.txt %datac[4]%
	echo [6] exceptionminimapnametable.txt %datac[5]%
	echo [7] fogParameterTable.txt %datac[6]%
	echo [8] indoorrswtable.txt %datac[7]%
	echo [9] itemmoveinfov5.txt %datac[8]%
	echo [10] leveluseskillspamount.txt %datac[9]%
	echo [11] manner.txt %datac[10]%
	echo [12] mapobjlighttable.txt %datac[11]%
	echo [13] mappostable.txt %datac[12]%
	echo [14] metalprocessitemtable.txt %datac[13]%
	echo [15] mp3nametable.txt %datac[14]%
	echo [16] resnametable.txt %datac[15]%
	echo [17] viewpointtable.txt %datac[16]%
	echo =================================================================
	set /p data="Now choose:" /E /H /C /I /Y
	if %data%==0 goto AdditionsMenu
	if %data%==1 (
		xcopy "..\Additions\data\bookitemnametable.txt" ".\Client\data\bookitemnametable.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\buyingstoreitemlist.txt" ".\Client\data\buyingstoreitemlist.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\carditemnametable.txt" ".\Client\data\carditemnametable.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\cardpostfixnametable.txt" ".\Client\data\cardpostfixnametable.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\num2cardillustnametable.txt" ".\Client\data\num2cardillustnametable.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\etcinfo.txt" ".\Client\data\etcinfo.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\exceptionminimapnametable.txt" ".\Client\data\exceptionminimapnametable.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\fogParameterTable.txt" ".\Client\data\fogParameterTable.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\indoorrswtable.txt" ".\Client\data\indoorrswtable.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\itemmoveinfov5.txt" ".\Client\data\itemmoveinfov5.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\leveluseskillspamount.txt" ".\Client\data\leveluseskillspamount.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\manner.txt" ".\Client\data\manner.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\mapobjlighttable.txt" ".\Client\data\mapobjlighttable.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\mappostable.txt" ".\Client\data\mappostable.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\metalprocessitemtable.txt" ".\Client\data\metalprocessitemtable.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\mp3nametable.txt" ".\Client\data\mp3nametable.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\viewpointtable.txt" ".\Client\data\viewpointtable.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\resnametable.txt" ".\Client\data\resnametable.txt" /E /H /C /I /Y
		set datac[0]=Copied
	)
	if %data%==2 (
		xcopy "..\Additions\data\bookitemnametable.txt" ".\Client\data\bookitemnametable.txt" /E /H /C /I /Y
		set datac[1]=Copied
	)
	if %data%==3 (
		xcopy "..\Additions\data\buyingstoreitemlist.txt" ".\Client\data\buyingstoreitemlist.txt" /E /H /C /I /Y
		set datac[2]=Copied
	)
	if %data%==4 (
		xcopy "..\Additions\data\carditemnametable.txt" ".\Client\data\carditemnametable.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\cardpostfixnametable.txt" ".\Client\data\cardpostfixnametable.txt" /E /H /C /I /Y
		xcopy "..\Additions\data\num2cardillustnametable.txt" ".\Client\data\num2cardillustnametable.txt" /E /H /C /I /Y
		set datac[3]=Copied
	)
	if %data%==5 (
		xcopy "..\Additions\data\etcinfo.txt" ".\Client\data\etcinfo.txt" /E /H /C /I /Y
		set datac[4]=Copied
	)
	if %data%==6 (
		xcopy "..\Additions\data\exceptionminimapnametable.txt" ".\Client\data\exceptionminimapnametable.txt" /E /H /C /I /Y
		set datac[5]=Copied
	)
	if %data%==7 (
		xcopy "..\Additions\data\fogParameterTable.txt" ".\Client\data\fogParameterTable.txt" /E /H /C /I /Y
		set datac[6]=Copied
	)
	if %data%==8 (
		xcopy "..\Additions\data\indoorrswtable.txt" ".\Client\data\indoorrswtable.txt" /E /H /C /I /Y
		set datac[7]=Copied
	)
	if %data%==9 (
		xcopy "..\Additions\data\itemmoveinfov5.txt" ".\Client\data\itemmoveinfov5.txt" /E /H /C /I /Y
		set datac[8]=Copied
	)
	if %data%==10 (
		xcopy "..\Additions\data\leveluseskillspamount.txt" ".\Client\data\leveluseskillspamount.txt" /E /H /C /I /Y
		set datac[9]=Copied
	)
	if %data%==11 (
		xcopy "..\Additions\data\manner.txt" ".\Client\data\manner.txt" /E /H /C /I /Y
		set datac[10]=Copied
	)
	if %data%==12 (
		xcopy "..\Additions\data\mapobjlighttable.txt" ".\Client\data\mapobjlighttable.txt" /E /H /C /I /Y
		set datac[11]=Copied
	)
	if %data%==13 (
		xcopy "..\Additions\data\mappostable.txt" ".\Client\data\mappostable.txt" /E /H /C /I /Y
		set datac[12]=Copied
	)
	if %data%==14 (
		xcopy "..\Additions\data\metalprocessitemtable.txt" ".\Client\data\metalprocessitemtable.txt" /E /H /C /I /Y
		set datac[13]=Copied
	)
	if %data%==15 (
		xcopy "..\Additions\data\mp3nametable.txt" ".\Client\data\mp3nametable.txt" /E /H /C /I /Y
		set datac[14]=Copied
	)
	if %data%==16 (
		xcopy "..\Additions\data\resnametable.txt" ".\Client\data\resnametable.txt" /E /H /C /I /Y
		set datac[15]=Copied
	)
	if %data%==17 (
		xcopy "..\Additions\data\viewpointtable.txt" ".\Client\data\viewpointtable.txt" /E /H /C /I /Y
		set datac[16]=Copied
	)
	pause
	goto DataMenu
	pause
	
:DataLua
	cls
	echo =================================================================
	echo data\luafiles514
	echo =================================================================
	echo [0] Back to previous Menu
	echo [1] All in One Package %lua_c[0]%
	echo [2] Headgears %lua_c[1]%
	echo [3] changedirectorylist.lub %lua_c[2]%
	echo [4] DrawItemOnAura.lub %lua_c[3]%
	echo [5] enumvar.lub %lua_c[4]%
	echo [6] exceptionitemproducer.lub %lua_c[5]%
	echo [7] NPC/Mob and Pets %lua_c[6]%
	echo [8] kaframovemapservicelist.lub %lua_c[7]%
	echo [9] npclocationradius.lub %lua_c[8]%
	echo [10] shadowtable.lub %lua_c[9]%
	echo [11] Robes/Costume Garments %lua_c[10]%
	echo [12] tb_cashshop_banner.lub %lua_c[11]%
	echo [13] tb_checkattendance_banner.lub %lua_c[12]%
	echo [14] Weapons %lua_c[13]%
	echo [15] World Map %lua_c[14]%
	echo [16] effecttool\forcerendereffect.lub %lua_c[15]%
	echo [17] Hateffectinfo %lua_c[16]%
	echo [18] skilleffectinfo %lua_c[17]%
	echo [19] skillinfoz %lua_c[18]%
	echo [20] stateicon %lua_c[19]%
	echo [21] stylingshop %lua_c[20]%
	echo [22] ItemDBNameTbl %lua_c[21]%
	echo =================================================================
	set /p lua="Now choose:" /E /H /C /I /Y
	if %lua%==0 goto AdditionsMenu
	if %lua%==1 (
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\accessoryid.lub" ".\Client\data\luafiles514\lua files\datainfo\accessoryid.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\accname.lub" ".\Client\data\luafiles514\lua files\datainfo\accname.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\accname_eng.lub" ".\Client\data\luafiles514\lua files\datainfo\accname_eng.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\tb_layer_priority.lub" ".\Client\data\luafiles514\lua files\datainfo\tb_layer_priority.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\changedirectorylist.lub" ".\Client\data\luafiles514\lua files\datainfo\changedirectorylist.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\DrawItemOnAura.lub" ".\Client\data\luafiles514\lua files\datainfo\DrawItemOnAura.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\enumvar.lub" ".\Client\data\luafiles514\lua files\datainfo\enumvar.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\exceptionitemproducer.lub" ".\Client\data\luafiles514\lua files\datainfo\exceptionitemproducer.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\jobidentity.lub" ".\Client\data\luafiles514\lua files\datainfo\jobidentity.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\jobname.lub" ".\Client\data\luafiles514\lua files\datainfo\jobname.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\npcidentity.lub" ".\Client\data\luafiles514\lua files\datainfo\npcidentity.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\kaframovemapservicelist.lub" ".\Client\data\luafiles514\lua files\datainfo\kaframovemapservicelist.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\npclocationradius.lub" ".\Client\data\luafiles514\lua files\datainfo\npclocationradius.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\shadowtable.lub" ".\Client\data\luafiles514\lua files\datainfo\shadowtable.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\spriterobeid.lub" ".\Client\data\luafiles514\lua files\datainfo\spriterobeid.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\spriterobename.lub" ".\Client\data\luafiles514\lua files\datainfo\spriterobename.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\transparentItem\transparentItem.lub" ".\Client\data\luafiles514\lua files\transparentItem\transparentItem.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\tb_cashshop_banner.lub" ".\Client\data\luafiles514\lua files\datainfo\tb_cashshop_banner.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\tb_checkattendance_banner.lub" ".\Client\data\luafiles514\lua files\datainfo\tb_checkattendance_banner.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\weapontable.lub" ".\Client\data\luafiles514\lua files\datainfo\weapontable.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\worldviewdata\worldviewdata_info.lub" ".\Client\data\luafiles514\lua files\worldviewdata\worldviewdata_info.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\worldviewdata\worldviewdata_table.lub" ".\Client\data\luafiles514\lua files\worldviewdata\worldviewdata_table.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\effecttool\forcerendereffect.lub" ".\Client\data\luafiles514\lua files\effecttool\forcerendereffect.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\hateffectinfo\hateffectinfo.lub" ".\Client\data\luafiles514\lua files\hateffectinfo\hateffectinfo.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\skilleffectinfo\actorstate.lub" ".\Client\data\luafiles514\lua files\skilleffectinfo\actorstate.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\skilleffectinfo\effectid.lub" ".\Client\data\luafiles514\lua files\skilleffectinfo\effectid.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\skilleffectinfo\skilleffectinfolist.lub" ".\Client\data\luafiles514\lua files\skilleffectinfo\skilleffectinfolist.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\skillinfoz\jobinheritlist.lub" ".\Client\data\luafiles514\lua files\skillinfoz\jobinheritlist.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\skillinfoz\skillid.lub" ".\Client\data\luafiles514\lua files\skillinfoz\skillid.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\skillinfoz\skilltreeview.lub" ".\Client\data\luafiles514\lua files\skillinfoz\skilltreeview.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\stateicon\efstids.lub" ".\Client\data\luafiles514\lua files\stateicon\efstids.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\stateicon\stateiconimginfo.lub" ".\Client\data\luafiles514\lua files\stateicon\stateiconimginfo.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\stateicon\stateiconinfo.lub" ".\Client\data\luafiles514\lua files\stateicon\stateiconinfo.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\stylingshop\stylingshopinfo.lub" ".\Client\data\luafiles514\lua files\stylingshop\stylingshopinfo.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\ItemDBNameTbl.lub" ".\Client\data\luafiles514\lua files\ItemDBNameTbl.lub" /E /H /C /I /Y
		set lua_c[0]=Copied
	)
	if %lua%==2 (
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\accessoryid.lub" ".\Client\data\luafiles514\lua files\datainfo\accessoryid.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\accname.lub" ".\Client\data\luafiles514\lua files\datainfo\accname.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\accname_eng.lub" ".\Client\data\luafiles514\lua files\datainfo\accname_eng.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\tb_layer_priority.lub" ".\Client\data\luafiles514\lua files\datainfo\tb_layer_priority.lub" /E /H /C /I /Y
		set lua_c[1]=Copied
	)
	if %lua%==3 (
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\changedirectorylist.lub" ".\Client\data\luafiles514\lua files\datainfo\changedirectorylist.lub" /E /H /C /I /Y
		set lua_c[2]=Copied
	)
	if %lua%==4 (
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\DrawItemOnAura.lub" ".\Client\data\luafiles514\lua files\datainfo\DrawItemOnAura.lub" /E /H /C /I /Y
		set lua_c[3]=Copied
	)
	if %lua%==5 (
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\enumvar.lub" ".\Client\data\luafiles514\lua files\datainfo\enumvar.lub" /E /H /C /I /Y
		set lua_c[4]=Copied
	)
	if %lua%==6 (
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\exceptionitemproducer.lub" ".\Client\data\luafiles514\lua files\datainfo\exceptionitemproducer.lub" /E /H /C /I /Y
		set lua_c[5]=Copied
	)
	if %lua%==7 (
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\jobidentity.lub" ".\Client\data\luafiles514\lua files\datainfo\jobidentity.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\jobname.lub" ".\Client\data\luafiles514\lua files\datainfo\jobname.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\npcidentity.lub" ".\Client\data\luafiles514\lua files\datainfo\npcidentity.lub" /E /H /C /I /Y
		set lua_c[6]=Copied
	)
	if %lua%==8 (
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\kaframovemapservicelist.lub" ".\Client\data\luafiles514\lua files\datainfo\kaframovemapservicelist.lub" /E /H /C /I /Y
		set lua_c[7]=Copied
	)
	if %lua%==9 (
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\npclocationradius.lub" ".\Client\data\luafiles514\lua files\datainfo\npclocationradius.lub" /E /H /C /I /Y
		set lua_c[8]=Copied
	)
	if %lua%==10 (
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\shadowtable.lub" ".\Client\data\luafiles514\lua files\datainfo\shadowtable.lub" /E /H /C /I /Y
		set lua_c[9]=Copied
	)
	if %lua%==11 (
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\spriterobeid.lub" ".\Client\data\luafiles514\lua files\datainfo\spriterobeid.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\spriterobename.lub" ".\Client\data\luafiles514\lua files\datainfo\spriterobename.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\transparentItem\transparentItem.lub" ".\Client\data\luafiles514\lua files\transparentItem\transparentItem.lub" /E /H /C /I /Y
		set lua_c[10]=Copied
	)
	if %lua%==12 (
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\tb_cashshop_banner.lub" ".\Client\data\luafiles514\lua files\datainfo\tb_cashshop_banner.lub" /E /H /C /I /Y
		set lua_c[11]=Copied
	)
	if %lua%==13 (
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\tb_checkattendance_banner.lub" ".\Client\data\luafiles514\lua files\datainfo\tb_checkattendance_banner.lub" /E /H /C /I /Y
		set lua_c[12]=Copied
	)
	if %lua%==14 (
		xcopy "..\Additions\data\luafiles514\lua files\datainfo\weapontable.lub" ".\Client\data\luafiles514\lua files\datainfo\weapontable.lub" /E /H /C /I /Y
		set lua_c[13]=Copied
	)
	if %lua%==15 (
		xcopy "..\Additions\data\luafiles514\lua files\worldviewdata\worldviewdata_info.lub" ".\Client\data\luafiles514\lua files\worldviewdata\worldviewdata_info.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\worldviewdata\worldviewdata_table.lub" ".\Client\data\luafiles514\lua files\worldviewdata\worldviewdata_table.lub" /E /H /C /I /Y
		set lua_c[14]=Copied
	)
	if %lua%==16 (
		xcopy "..\Additions\data\luafiles514\lua files\effecttool\forcerendereffect.lub" ".\Client\data\luafiles514\lua files\effecttool\forcerendereffect.lub" /E /H /C /I /Y
		set lua_c[15]=Copied
	)
	if %lua%==17 (
		xcopy "..\Additions\data\luafiles514\lua files\hateffectinfo\hateffectinfo.lub" ".\Client\data\luafiles514\lua files\hateffectinfo\hateffectinfo.lub" /E /H /C /I /Y
		set lua_c[16]=Copied
	)
	if %lua%==18 (
		xcopy "..\Additions\data\luafiles514\lua files\skilleffectinfo\actorstate.lub" ".\Client\data\luafiles514\lua files\skilleffectinfo\actorstate.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\skilleffectinfo\effectid.lub" ".\Client\data\luafiles514\lua files\skilleffectinfo\effectid.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\skilleffectinfo\skilleffectinfolist.lub" ".\Client\data\luafiles514\lua files\skilleffectinfo\skilleffectinfolist.lub" /E /H /C /I /Y
		set lua_c[17]=Copied
	)
	if %lua%==19 (
		xcopy "..\Additions\data\luafiles514\lua files\skillinfoz\jobinheritlist.lub" ".\Client\data\luafiles514\lua files\skillinfoz\jobinheritlist.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\skillinfoz\skillid.lub" ".\Client\data\luafiles514\lua files\skillinfoz\skillid.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\skillinfoz\skilltreeview.lub" ".\Client\data\luafiles514\lua files\skillinfoz\skilltreeview.lub" /E /H /C /I /Y
		set lua_c[18]=Copied
	)
	if %lua%==20 (
		xcopy "..\Additions\data\luafiles514\lua files\stateicon\efstids.lub" ".\Client\data\luafiles514\lua files\stateicon\efstids.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\stateicon\stateiconimginfo.lub" ".\Client\data\luafiles514\lua files\stateicon\stateiconimginfo.lub" /E /H /C /I /Y
		xcopy "..\Additions\data\luafiles514\lua files\stateicon\stateiconinfo.lub" ".\Client\data\luafiles514\lua files\stateicon\stateiconinfo.lub" /E /H /C /I /Y
		set lua_c[19]=Copied
	)
	if %lua%==21 (
		xcopy "..\Additions\data\luafiles514\lua files\stylingshop\stylingshopinfo.lub" ".\Client\data\luafiles514\lua files\stylingshop\stylingshopinfo.lub" /E /H /C /I /Y
		set lua_c[20]=Copied
	)
	if %lua%==22 (
		xcopy "..\Additions\data\luafiles514\lua files\ItemDBNameTbl.lub" ".\Client\data\luafiles514\lua files\ItemDBNameTbl.lub" /E /H /C /I /Y
		set lua_c[21]=Copied
	)
	pause
	goto DataLua
	pause
	
:SysLua
	cls
	echo =================================================================
	echo System Folder
	echo =================================================================
	echo [0] Back to previous Menu
	echo [1] ChangeMaterial_EN.lub %sys_c[0]%
	echo [2] CheckAttendance_EN.lub %sys_c[1]%
	echo [3] monster_size_effect_EN.lub %sys_c[2]%
	echo [4] PetEvolutionCln_true_E.lub %sys_c[3]%
	echo [5] PrivateAirplane_T_EN.lub %sys_c[4]%
	echo [6] Sign_Data_CLS.lub %sys_c[5]%
	::echo [7] Rune Folder %sys_c[6]%
	echo =================================================================
	set /p sys="Now choose:" /E /H /C /I /Y
	if %sys%==0 goto AdditionsMenu
	if %sys%==1 (
		xcopy "..\Additions\System\ChangeMaterial_EN.lub" ".\Client\System\ChangeMaterial_EN.lub" /E /H /C /I /Y
		set sys_c[0]=Copied
	)
	if %sys%==2 (
		xcopy "..\Additions\System\CheckAttendance_EN.lub" ".\Client\System\CheckAttendance_EN.lub" /E /H /C /I /Y
		set sys_c[1]=Copied
	)
	if %sys%==3 (
		xcopy "..\Additions\System\monster_size_effect_EN.lub" ".\Client\System\monster_size_effect_EN.lub" /E /H /C /I /Y
		set sys_c[2]=Copied
	)
	if %sys%==4 (
		xcopy "..\Additions\System\PetEvolutionCln_true_E.lub" ".\Client\System\PetEvolutionCln_true_E.lub" /E /H /C /I /Y
		set sys_c[3]=Copied
	)
	if %sys%==5 (
		xcopy "..\Additions\System\PrivateAirplane_T_EN.lub" ".\Client\System\PrivateAirplane_T_EN.lub" /E /H /C /I /Y
		set sys_c[4]=Copied
	)
	if %sys%==6 (
		xcopy "..\Additions\System\Sign_Data_CLS.lub" ".\Client\System\Sign_Data_CLS.lub" /E /H /C /I /Y
		set sys_c[5]=Copied
	)
	::if %sys%==7 (
	::	xcopy "..\Additions\System\Rune\" ".\Client\System\Rune\" /E /H /C /I /Y
	::	set sys_c[6]=Copied
	::)
	goto AdditionsMenu
	pause
	goto SysLua
	pause
	
:DataMaps
	cls
	echo =================================================================
	echo Legacy Maps
	echo =================================================================
	echo [0] Back to previous Menu
	echo [1] All in One Package %omaps[0]%
	echo [2] Airship Maps %omaps[1]%
	echo [3] gefenia01.rsw %omaps[2]%
	echo [4] tur_d03_i.rsw %omaps[3]%
	echo [5] aldeg_cas01.rsw %omaps[4]%
	echo [6] gef_fild02.rsw %omaps[5]%
	echo [7] gl_cas01.rsw %omaps[6]%
	echo [8] mjolnir_07.rsw %omaps[7]%
	echo [9] mjolnir_08.rsw %omaps[8]%
	echo [10] mjolnir_09.rsw %omaps[9]%
	echo [11] mjolnir_10.rsw %omaps[10]%
	echo [11] mjolnir_11.rsw %omaps[11]%
	echo [13] moc_fild01.rsw %omaps[12]%
	echo [14] paramk.rsw %omaps[13]%
	echo [15] pay_fild04.rsw %omaps[14]%
	echo [16] prt_fild00.rsw %omaps[15]%
	echo [17] prt_fild01.rsw %omaps[16]%
	echo [18] prt_fild02.rsw %omaps[17]%
	echo [19] prt_fild03.rsw %omaps[18]%
	echo [20] prt_fild04.rsw %omaps[19]%
	echo [21] prt_fild05.rsw %omaps[20]%
	echo [22] prt_fild06.rsw %omaps[21]%
	echo [23] prt_fild07.rsw %omaps[22]%
	echo [24] prt_fild09.rsw %omaps[23]%
	echo [25] prt_fild10.rsw %omaps[24]%
	echo [26] 2009rwc_ Maps %omaps[25]%
	echo [27] 2012rwc_ Maps %omaps[26]%
	echo [28] poring_c01 %omaps[27]%
	echo [29] poring_c02 %omaps[28]%
	echo [30] sch_lab %omaps[29]%
	echo =================================================================
	set /p map="Choose which maps you want to copy:"
	if %map%==0 (
		goto AdditionsMenu
	)
	if %map%==1 (
		xcopy "..\Additions\data\einbroch.gat" ".\Client\data\einbroch.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\einbroch.gnd" ".\Client\data\einbroch.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\einbroch.rsw" ".\Client\data\einbroch.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\lighthalzen.gat" ".\Client\data\lighthalzen.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\lighthalzen.gnd" ".\Client\data\lighthalzen.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\lighthalzen.rsw" ".\Client\data\lighthalzen.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\yuno.gat" ".\Client\data\yuno.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\yuno.gnd" ".\Client\data\yuno.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\yuno.rsw" ".\Client\data\yuno.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\gefenia01.rsw" ".\Client\data\gefenia01.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\tur_d03_i.rsw" ".\Client\data\tur_d03_i.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\aldeg_cas01.rsw" ".\Client\data\aldeg_cas01.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\gef_fild02.rsw" ".\Client\data\gef_fild02.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\gl_cas01.rsw" ".\Client\data\gl_cas01.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\mjolnir_07.rsw" ".\Client\data\mjolnir_07.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\mjolnir_08.rsw" ".\Client\data\mjolnir_08.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\mjolnir_09.rsw" ".\Client\data\mjolnir_09.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\mjolnir_10.rsw" ".\Client\data\mjolnir_10.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\mjolnir_11.rsw" ".\Client\data\mjolnir_11.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\moc_fild01.rsw" ".\Client\data\moc_fild01.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\paramk.rsw" ".\Client\data\paramk.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\pay_fild04.rsw" ".\Client\data\pay_fild04.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\prt_fild00.rsw" ".\Client\data\prt_fild00.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\prt_fild01.rsw" ".\Client\data\prt_fild01.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\prt_fild02.rsw" ".\Client\data\prt_fild02.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\prt_fild03.rsw" ".\Client\data\prt_fild03.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\prt_fild04.rsw" ".\Client\data\prt_fild04.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\prt_fild05.rsw" ".\Client\data\prt_fild05.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\prt_fild06.rsw" ".\Client\data\prt_fild06.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\prt_fild07.rsw" ".\Client\data\prt_fild07.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\prt_fild09.rsw" ".\Client\data\prt_fild09.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\prt_fild10.rsw" ".\Client\data\prt_fild10.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_01.gat" ".\Client\data\2009rwc_01.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_01.gnd" ".\Client\data\2009rwc_01.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_01.rsw" ".\Client\data\2009rwc_01.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_01.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_01.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_02.gat" ".\Client\data\2009rwc_02.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_02.gnd" ".\Client\data\2009rwc_02.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_02.rsw" ".\Client\data\2009rwc_02.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_02.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_02.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_03.gat" ".\Client\data\2009rwc_03.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_03.gnd" ".\Client\data\2009rwc_03.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_03.rsw" ".\Client\data\2009rwc_03.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_03.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_03.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_04.gat" ".\Client\data\2009rwc_04.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_04.gnd" ".\Client\data\2009rwc_04.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_04.rsw" ".\Client\data\2009rwc_04.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_04.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_04.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_05.gat" ".\Client\data\2009rwc_05.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_05.gnd" ".\Client\data\2009rwc_05.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_05.rsw" ".\Client\data\2009rwc_05.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_05.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_05.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_06.gat" ".\Client\data\2009rwc_06.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_06.gnd" ".\Client\data\2009rwc_06.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_06.rsw" ".\Client\data\2009rwc_06.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_06.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_06.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_07.gat" ".\Client\data\2009rwc_07.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_07.gnd" ".\Client\data\2009rwc_07.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_07.rsw" ".\Client\data\2009rwc_07.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_07.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_07.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_08.gat" ".\Client\data\2009rwc_08.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_08.gnd" ".\Client\data\2009rwc_08.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_08.rsw" ".\Client\data\2009rwc_08.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_08.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_08.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_f01.gat" ".\Client\data\2009rwc_f01.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_f01.gnd" ".\Client\data\2009rwc_f01.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_f01.rsw" ".\Client\data\2009rwc_f01.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_f01.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_f01.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_01.gat" ".\Client\data\2012rwc_01.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_01.gnd" ".\Client\data\2012rwc_01.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_01.rsw" ".\Client\data\2012rwc_01.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_02.gat" ".\Client\data\2012rwc_02.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_02.gnd" ".\Client\data\2012rwc_02.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_02.rsw" ".\Client\data\2012rwc_02.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_03.gat" ".\Client\data\2012rwc_03.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_03.gnd" ".\Client\data\2012rwc_03.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_03.rsw" ".\Client\data\2012rwc_03.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_04.gat" ".\Client\data\2012rwc_04.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_04.gnd" ".\Client\data\2012rwc_04.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_04.rsw" ".\Client\data\2012rwc_04.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_05.gat" ".\Client\data\2012rwc_05.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_05.gnd" ".\Client\data\2012rwc_05.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_05.rsw" ".\Client\data\2012rwc_05.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_06.gat" ".\Client\data\2012rwc_06.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_06.gnd" ".\Client\data\2012rwc_06.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_06.rsw" ".\Client\data\2012rwc_06.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_07.gat" ".\Client\data\2012rwc_07.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_07.gnd" ".\Client\data\2012rwc_07.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_07.rsw" ".\Client\data\2012rwc_07.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_08.gat" ".\Client\data\2012rwc_08.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_08.gnd" ".\Client\data\2012rwc_08.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_08.rsw" ".\Client\data\2012rwc_08.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\poring_c01.gat" ".\Client\data\poring_c01.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\poring_c01.gnd" ".\Client\data\poring_c01.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\poring_c01.rsw" ".\Client\data\poring_c01.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\poring_c01.bmp" ".\Client\data\texture\유저인터페이스\map\poring_c01.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\poring_c02.gat" ".\Client\data\poring_c02.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\poring_c02.gnd" ".\Client\data\poring_c02.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\poring_c02.rsw" ".\Client\data\poring_c02.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\poring_c02.bmp" ".\Client\data\texture\유저인터페이스\map\poring_c02.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\sch_lab.gat" ".\Client\data\sch_lab.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\sch_lab.gnd" ".\Client\data\sch_lab.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\sch_lab.rsw" ".\Client\data\sch_lab.rsw" /E /H /C /I /Y
		set omaps[0]=Copied
	)
	if %map%==2 (
		xcopy "..\Additions\data\einbroch.gat" ".\Client\data\einbroch.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\einbroch.gnd" ".\Client\data\einbroch.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\einbroch.rsw" ".\Client\data\einbroch.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\lighthalzen.gat" ".\Client\data\lighthalzen.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\lighthalzen.gnd" ".\Client\data\lighthalzen.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\lighthalzen.rsw" ".\Client\data\lighthalzen.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\yuno.gat" ".\Client\data\yuno.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\yuno.gnd" ".\Client\data\yuno.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\yuno.rsw" ".\Client\data\yuno.rsw" /E /H /C /I /Y
		set omaps[1]=Copied
	)
	if %map%==3 (
		xcopy "..\Additions\data\gefenia01.rsw" ".\Client\data\gefenia01.rsw" /E /H /C /I /Y
		set omaps[2]=Copied
	)
	if %map%==4 (
		xcopy "..\Additions\data\tur_d03_i.rsw" ".\Client\data\tur_d03_i.rsw" /E /H /C /I /Y
		set omaps[3]=Copied
	)
	if %map%==5 (
		xcopy "..\Additions\data\aldeg_cas01.rsw" ".\Client\data\aldeg_cas01.rsw" /E /H /C /I /Y
		set omaps[4]=Copied
	)
	if %map%==6 (
		xcopy "..\Additions\data\gef_fild02.rsw" ".\Client\data\gef_fild02.rsw" /E /H /C /I /Y
		set omaps[5]=Copied
	)
	if %map%==7 (
		xcopy "..\Additions\data\gl_cas01.rsw" ".\Client\data\gl_cas01.rsw" /E /H /C /I /Y
		set omaps[6]=Copied
	)
	if %map%==8 (
		xcopy "..\Additions\data\mjolnir_07.rsw" ".\Client\data\mjolnir_07.rsw" /E /H /C /I /Y
		set omaps[7]=Copied
	)
	if %map%==9 (
		xcopy "..\Additions\data\mjolnir_08.rsw" ".\Client\data\mjolnir_08.rsw" /E /H /C /I /Y
		set omaps[8]=Copied
	)
	if %map%==10 (
		xcopy "..\Additions\data\mjolnir_09.rsw" ".\Client\data\mjolnir_09.rsw" /E /H /C /I /Y
		set omaps[9]=Copied
	)
	if %map%==11 (
		xcopy "..\Additions\data\mjolnir_10.rsw" ".\Client\data\mjolnir_10.rsw" /E /H /C /I /Y
		set omaps[10]=Copied
	)
	if %map%==12 (
		xcopy "..\Additions\data\mjolnir_11.rsw" ".\Client\data\mjolnir_11.rsw" /E /H /C /I /Y
		set omaps[11]=Copied
	)
	if %map%==13 (
		xcopy "..\Additions\data\moc_fild01.rsw" ".\Client\data\moc_fild01.rsw" /E /H /C /I /Y
		set omaps[12]=Copied
	)
	if %map%==14 (
		xcopy "..\Additions\data\paramk.rsw" ".\Client\data\paramk.rsw" /E /H /C /I /Y
		set omaps[13]=Copied
	)
	if %map%==15 (
		xcopy "..\Additions\data\pay_fild04.rsw" ".\Client\data\pay_fild04.rsw" /E /H /C /I /Y
		set omaps[14]=Copied
	)
	if %map%==16 (
		xcopy "..\Additions\data\prt_fild00.rsw" ".\Client\data\prt_fild00.rsw" /E /H /C /I /Y
		set omaps[15]=Copied
	)
	if %map%==17 (
		xcopy "..\Additions\data\prt_fild01.rsw" ".\Client\data\prt_fild01.rsw" /E /H /C /I /Y
		set omaps[16]=Copied
	)
	if %map%==18 (
		xcopy "..\Additions\data\prt_fild02.rsw" ".\Client\data\prt_fild02.rsw" /E /H /C /I /Y
		set omaps[17]=Copied
	)
	if %map%==19 (
		xcopy "..\Additions\data\prt_fild03.rsw" ".\Client\data\prt_fild03.rsw" /E /H /C /I /Y
		set omaps[18]=Copied
	)
	if %map%==20 (
		xcopy "..\Additions\data\prt_fild04.rsw" ".\Client\data\prt_fild04.rsw" /E /H /C /I /Y
		set omaps[19]=Copied
	)
	if %map%==21 (
		xcopy "..\Additions\data\prt_fild05.rsw" ".\Client\data\prt_fild05.rsw" /E /H /C /I /Y
		set omaps[20]=Copied
	)
	if %map%==22 (
		xcopy "..\Additions\data\prt_fild06.rsw" ".\Client\data\prt_fild06.rsw" /E /H /C /I /Y
		set omaps[21]=Copied
	)
	if %map%==23 (
		xcopy "..\Additions\data\prt_fild07.rsw" ".\Client\data\prt_fild07.rsw" /E /H /C /I /Y
		set omaps[22]=Copied
	)
	if %map%==24 (
		xcopy "..\Additions\data\prt_fild09.rsw" ".\Client\data\prt_fild09.rsw" /E /H /C /I /Y
		set omaps[23]=Copied
	)
	if %map%==25 (
		xcopy "..\Additions\data\prt_fild10.rsw" ".\Client\data\prt_fild10.rsw" /E /H /C /I /Y
		set omaps[24]=Copied
	)
	if %map%==26 (
		xcopy "..\Additions\data\2009rwc_01.gat" ".\Client\data\2009rwc_01.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_01.gnd" ".\Client\data\2009rwc_01.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_01.rsw" ".\Client\data\2009rwc_01.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_01.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_01.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_02.gat" ".\Client\data\2009rwc_02.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_02.gnd" ".\Client\data\2009rwc_02.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_02.rsw" ".\Client\data\2009rwc_02.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_02.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_02.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_03.gat" ".\Client\data\2009rwc_03.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_03.gnd" ".\Client\data\2009rwc_03.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_03.rsw" ".\Client\data\2009rwc_03.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_03.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_03.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_04.gat" ".\Client\data\2009rwc_04.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_04.gnd" ".\Client\data\2009rwc_04.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_04.rsw" ".\Client\data\2009rwc_04.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_04.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_04.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_05.gat" ".\Client\data\2009rwc_05.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_05.gnd" ".\Client\data\2009rwc_05.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_05.rsw" ".\Client\data\2009rwc_05.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_05.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_05.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_06.gat" ".\Client\data\2009rwc_06.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_06.gnd" ".\Client\data\2009rwc_06.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_06.rsw" ".\Client\data\2009rwc_06.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_06.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_06.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_07.gat" ".\Client\data\2009rwc_07.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_07.gnd" ".\Client\data\2009rwc_07.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_07.rsw" ".\Client\data\2009rwc_07.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_07.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_07.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_08.gat" ".\Client\data\2009rwc_08.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_08.gnd" ".\Client\data\2009rwc_08.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_08.rsw" ".\Client\data\2009rwc_08.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_08.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_08.bmp" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_f01.gat" ".\Client\data\2009rwc_f01.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_f01.gnd" ".\Client\data\2009rwc_f01.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2009rwc_f01.rsw" ".\Client\data\2009rwc_f01.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\2009rwc_f01.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_f01.bmp" /E /H /C /I /Y
		set omaps[25]=Copied
	)
	if %map%==27 (
		xcopy "..\Additions\data\2012rwc_01.gat" ".\Client\data\2012rwc_01.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_01.gnd" ".\Client\data\2012rwc_01.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_01.rsw" ".\Client\data\2012rwc_01.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_02.gat" ".\Client\data\2012rwc_02.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_02.gnd" ".\Client\data\2012rwc_02.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_02.rsw" ".\Client\data\2012rwc_02.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_03.gat" ".\Client\data\2012rwc_03.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_03.gnd" ".\Client\data\2012rwc_03.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_03.rsw" ".\Client\data\2012rwc_03.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_04.gat" ".\Client\data\2012rwc_04.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_04.gnd" ".\Client\data\2012rwc_04.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_04.rsw" ".\Client\data\2012rwc_04.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_05.gat" ".\Client\data\2012rwc_05.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_05.gnd" ".\Client\data\2012rwc_05.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_05.rsw" ".\Client\data\2012rwc_05.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_06.gat" ".\Client\data\2012rwc_06.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_06.gnd" ".\Client\data\2012rwc_06.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_06.rsw" ".\Client\data\2012rwc_06.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_07.gat" ".\Client\data\2012rwc_07.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_07.gnd" ".\Client\data\2012rwc_07.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_07.rsw" ".\Client\data\2012rwc_07.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_08.gat" ".\Client\data\2012rwc_08.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_08.gnd" ".\Client\data\2012rwc_08.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\2012rwc_08.rsw" ".\Client\data\2012rwc_08.rsw" /E /H /C /I /Y
		set omaps[26]=Copied
	)
	if %map%==28 (
		xcopy "..\Additions\data\poring_c01.gat" ".\Client\data\poring_c01.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\poring_c01.gnd" ".\Client\data\poring_c01.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\poring_c01.rsw" ".\Client\data\poring_c01.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\poring_c01.bmp" ".\Client\data\texture\유저인터페이스\map\poring_c01.bmp" /E /H /C /I /Y
		set omaps[27]=Copied
	)
	if %map%==29 (
		xcopy "..\Additions\data\poring_c02.gat" ".\Client\data\poring_c02.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\poring_c02.gnd" ".\Client\data\poring_c02.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\poring_c02.rsw" ".\Client\data\poring_c02.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\poring_c02.bmp" ".\Client\data\texture\유저인터페이스\map\poring_c02.bmp" /E /H /C /I /Y
		set omaps[28]=Copied
	)
	if %map%==30 (
		xcopy "..\Additions\data\sch_lab.gat" ".\Client\data\sch_lab.gat" /E /H /C /I /Y
		xcopy "..\Additions\data\sch_lab.gnd" ".\Client\data\sch_lab.gnd" /E /H /C /I /Y
		xcopy "..\Additions\data\sch_lab.rsw" ".\Client\data\sch_lab.rsw" /E /H /C /I /Y
		xcopy "..\Additions\data\texture\유저인터페이스\map\sch_lab.bmp" ".\Client\data\texture\유저인터페이스\map\sch_lab.bmp" /E /H /C /I /Y
		set omaps[29]=Copied
	)
	pause
	goto DataMaps
	pause