@echo off
echo =================================================================
echo Welcome to the Additions Generator!
echo This will help you to copy over the files you want and need based on the choice you make.
echo It will loop itself until you close the program or choose Exit.
echo =================================================================
echo Note: This should only be used after you run the ClientGenerator.bat!
echo =================================================================
pause
chcp 1252
set "sourceDataPath=..\Additions\data"
set "sourceSystemPath=..\Additions\SystemEN"
set "destinationDataPath=.\Client\data"
set "destinationSystemPath=.\Client\SystemEN"
cls
echo =================================================================
echo First, type the Client Date you are using, that way I will only copy the files,
echo your client supports!
echo =================================================================
echo Example: 20220406 for 2022-04-06
echo =================================================================
set /p date="Client Date (YYYYMMDD): "
if not defined date (
	echo You have not defined your client date!
	exit
)
:AdditionsMenu
cls
echo =================================================================
echo Client Date: %date%
echo =================================================================
echo [1] Data Folder
echo [2] data\luafiles514
echo [3] System Folder
echo [4] Legacy Maps
echo [5] Legacy Minimaps
echo [6] Exit
echo =================================================================
set /p type="Now choose: "
if %type% equ 1 goto DataMenu
if %type% equ 2 goto DataLua
if %type% equ 3 goto SysLua
if %type% equ 4 goto DataMaps
if %type% equ 5 goto MiniMaps
exit

:DataMenu
	cls
	echo =================================================================
	echo Data Folder
	echo =================================================================
	echo [0] Back to previous Menu
	echo [1] All in One Package %datac[1]%
	echo [2] bookitemnametable.txt %datac[2]%
	echo [3] buyingstoreitemlist.txt %datac[3]%
	echo [4] card*.txt %datac[4]%
	echo [5] etcinfo.txt %datac[5]%
	echo [6] exceptionminimapnametable.txt %datac[6]%
	echo [7] fogParameterTable.txt %datac[7]%
	echo [8] indoorrswtable.txt %datac[8]%
	echo [9] itemmoveinfov5.txt %datac[9]%
	echo [10] leveluseskillspamount.txt %datac[10]%
	echo [11] manner.txt %datac[11]%
	echo [12] mapobjlighttable.txt %datac[12]%
	echo [13] mappostable.txt %datac[13]%
	echo [14] metalprocessitemtable.txt %datac[14]%
	echo [15] mp3nametable.txt %datac[15]%
	echo [16] resnametable.txt %datac[16]%
	echo [17] viewpointtable.txt %datac[17]%
	echo =================================================================
	set /p data="Now choose: "
	if %data% equ 0 (
		goto AdditionsMenu
	) else if %data% equ 1 (
		xcopy "%sourceDataPath%\bookitemnametable.txt" "%destinationDataPath%\bookitemnametable.txt"* /H /C /Y
		xcopy "%sourceDataPath%\buyingstoreitemlist.txt" "%destinationDataPath%\buyingstoreitemlist.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\carditemnametable.txt" "%destinationDataPath%\carditemnametable.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\cardpostfixnametable.txt" "%destinationDataPath%\cardpostfixnametable.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\etcinfo.txt" "%destinationDataPath%\etcinfo.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\exceptionminimapnametable.txt" "%destinationDataPath%\exceptionminimapnametable.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\fogParameterTable.txt" "%destinationDataPath%\fogParameterTable.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\indoorrswtable.txt" "%destinationDataPath%\indoorrswtable.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\itemmoveinfov5.txt" "%destinationDataPath%\itemmoveinfov5.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\leveluseskillspamount.txt" "%destinationDataPath%\leveluseskillspamount.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\manner.txt" "%destinationDataPath%\manner.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\mapobjlighttable.txt" "%destinationDataPath%\mapobjlighttable.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\mappostable.txt" "%destinationDataPath%\mappostable.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\metalprocessitemtable.txt" "%destinationDataPath%\metalprocessitemtable.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\mp3nametable.txt" "%destinationDataPath%\mp3nametable.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\num2cardillustnametable.txt" "%destinationDataPath%\num2cardillustnametable.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\resnametable.txt" "%destinationDataPath%\resnametable.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\viewpointtable.txt" "%destinationDataPath%\viewpointtable.txt"* /H /C /I /Y
	) else if %data% equ 2 (
		xcopy "%sourceDataPath%\bookitemnametable.txt" "%destinationDataPath%\bookitemnametable.txt"* /H /C /I /Y
	) else if %data% equ 3 (
		xcopy "%sourceDataPath%\buyingstoreitemlist.txt" "%destinationDataPath%\buyingstoreitemlist.txt"* /H /C /I /Y
	) else if %data% equ 4 (
		xcopy "%sourceDataPath%\carditemnametable.txt" "%destinationDataPath%\carditemnametable.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\cardpostfixnametable.txt" "%destinationDataPath%\cardpostfixnametable.txt"* /H /C /I /Y
		xcopy "%sourceDataPath%\num2cardillustnametable.txt" "%destinationDataPath%\num2cardillustnametable.txt"* /H /C /I /Y
	) else if %data% equ 5 (
		xcopy "%sourceDataPath%\etcinfo.txt" "%destinationDataPath%\etcinfo.txt"* /H /C /I /Y
	) else if %data% equ 6 (
		xcopy "%sourceDataPath%\exceptionminimapnametable.txt" "%destinationDataPath%\exceptionminimapnametable.txt"* /H /C /I /Y
	) else if %data% equ 7 (
		xcopy "%sourceDataPath%\fogParameterTable.txt" "%destinationDataPath%\fogParameterTable.txt"* /H /C /I /Y
	) else if %data% equ 8 (
		xcopy "%sourceDataPath%\indoorrswtable.txt" "%destinationDataPath%\indoorrswtable.txt"* /H /C /I /Y
	) else if %data% equ 9 (
		xcopy "%sourceDataPath%\itemmoveinfov5.txt" "%destinationDataPath%\itemmoveinfov5.txt"* /H /C /I /Y
	) else if %data% equ 10 (
		xcopy "%sourceDataPath%\leveluseskillspamount.txt" "%destinationDataPath%\leveluseskillspamount.txt"* /H /C /I /Y
	) else if %data% equ 11 (
		xcopy "%sourceDataPath%\manner.txt" "%destinationDataPath%\manner.txt"* /H /C /I /Y
	) else if %data% equ 12 (
		xcopy "%sourceDataPath%\mapobjlighttable.txt" "%destinationDataPath%\mapobjlighttable.txt"* /H /C /I /Y
	) else if %data% equ 13 (
		xcopy "%sourceDataPath%\mappostable.txt" "%destinationDataPath%\mappostable.txt"* /H /C /I /Y
	) else if %data% equ 14 (
		xcopy "%sourceDataPath%\metalprocessitemtable.txt" "%destinationDataPath%\metalprocessitemtable.txt"* /H /C /I /Y
	) else if %data% equ 15 (
		xcopy "%sourceDataPath%\mp3nametable.txt" "%destinationDataPath%\mp3nametable.txt"* /H /C /I /Y
	) else if %data% equ 16 (
		xcopy "%sourceDataPath%\resnametable.txt" "%destinationDataPath%\resnametable.txt"* /H /C /I /Y
	) else if %data% equ 17 (
		xcopy "%sourceDataPath%\viewpointtable.txt" "%destinationDataPath%\viewpointtable.txt"* /H /C /I /Y
	)

    if %data% equ 1 (
        for /L %%i in (1,1,17) do (
            set datac[%%i]=[ Copied ]
        )
    ) else (
		set datac[%data%]=[ Copied ]
	)
	goto DataMenu
	pause
	
:DataLua
	cls
	echo =================================================================
	echo data\luafiles514
	echo =================================================================
	echo [0] Back to previous Menu
	echo [1] All in One Package %lua_c[1]%
	echo [2] Headgears %lua_c[2]%
	echo [3] changedirectorylist.lub %lua_c[3]%
	echo [4] DrawItemOnAura.lub %lua_c[4]%
	echo [5] enumvar.lub %lua_c[5]%
	echo [6] exceptionitemproducer.lub %lua_c[6]%
	echo [7] NPC/Mob and Pets %lua_c[7]%
	echo [8] kaframovemapservicelist.lub %lua_c[8]%
	echo [9] npclocationradius.lub %lua_c[9]%
	echo [10] shadowtable.lub %lua_c[10]%
	echo [11] Robes/Costume Garments %lua_c[11]%
	echo [12] tb_cashshop_banner.lub %lua_c[12]%
	echo [13] tb_checkattendance_banner.lub %lua_c[13]%
	echo [14] Weapons %lua_c[14]%
	echo [15] World Map %lua_c[15]%
	echo [16] effecttool\forcerendereffect.lub %lua_c[16]%
	echo [17] Hateffectinfo (2024-04-17 and newer) %lua_c[17]%
	echo [18] skilleffectinfo %lua_c[18]%
	echo [19] skillinfoz %lua_c[19]%
	echo [20] stateicon %lua_c[20]%
	echo [21] stylingshop %lua_c[21]%
	echo [22] ItemDBNameTbl (2021-10-28 and newer) %lua_c[22]%
	echo =================================================================
	set /p lua="Now choose: "
	if %lua% equ 0 (
		goto AdditionsMenu
	) else if %lua% equ 1 (
		xcopy "%sourceDataPath%\luafiles514\" "%destinationDataPath%\luafiles514\"* /E /H /C /I /Y
		if %date% lss 20240417 (
			:: Remove new hateffectinfo files if Client is older than 2024-04-17,
			if exist "%destinationDataPath%\luafiles514\lua files\hateffectinfo\" rmdir /S /Q "%destinationDataPath%\luafiles514\lua files\hateffectinfo\"
			:: then copy default files over again from Translation folder
			xcopy "..\Translation\Renewal\data\luafiles514\lua files\hateffectinfo\" "%destinationDataPath%\luafiles514\lua files\hateffectinfo\"* /H /C /I /Y
		)
		if %date% lss 20211028 (
			if exist "%destinationDataPath%\luafiles514\lua files\ItemDBNameTbl.lub" del /S /Q "%destinationDataPath%\luafiles514\lua files\ItemDBNameTbl.lub"
		)
	) else if %lua% equ 2 (
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\accessoryid.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\accessoryid.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\accname.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\accname.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\accname_eng.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\accname_eng.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\tb_layer_priority.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\tb_layer_priority.lub"* /H /C /I /Y
	) else if %lua% equ 3 (
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\changedirectorylist.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\changedirectorylist.lub"* /H /C /I /Y
	) else if %lua% equ 4 (
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\DrawItemOnAura.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\DrawItemOnAura.lub"* /H /C /I /Y
	) else if %lua% equ 5 (
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\enumvar.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\enumvar.lub"* /H /C /I /Y
	) else if %lua% equ 6 (
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\exceptionitemproducer.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\exceptionitemproducer.lub"* /H /C /I /Y
	) else if %lua% equ 7 (
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\jobidentity.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\jobidentity.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\jobname.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\jobname.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\npcidentity.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\npcidentity.lub"* /H /C /I /Y
	) else if %lua% equ 8 (
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\kaframovemapservicelist.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\kaframovemapservicelist.lub"* /H /C /I /Y
	) else if %lua% equ 9 (
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\npclocationradius.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\npclocationradius.lub"* /H /C /I /Y
	) else if %lua% equ 10 (
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\shadowtable.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\shadowtable.lub"* /H /C /I /Y
	) else if %lua% equ 11 (
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\spriterobeid.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\spriterobeid.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\spriterobename.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\spriterobename.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\transparentItem\transparentItem.lub" "%destinationDataPath%\luafiles514\lua files\transparentItem\transparentItem.lub"* /H /C /I /Y
	) else if %lua% equ 12 (
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\tb_cashshop_banner.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\tb_cashshop_banner.lub"* /H /C /I /Y
	) else if %lua% equ 13 (
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\tb_checkattendance_banner.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\tb_checkattendance_banner.lub"* /H /C /I /Y
	) else if %lua% equ 14 (
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\weapontable.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\weapontable.lub"* /H /C /I /Y
	) else if %lua% equ 15 (
		xcopy "%sourceDataPath%\luafiles514\lua files\worldviewdata\worldviewdata_info.lub" "%destinationDataPath%\luafiles514\lua files\worldviewdata\worldviewdata_info.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\worldviewdata\worldviewdata_table.lub" "%destinationDataPath%\luafiles514\lua files\worldviewdata\worldviewdata_table.lub"* /H /C /I /Y
	) else if %lua% equ 16 (
		xcopy "%sourceDataPath%\luafiles514\lua files\effecttool\forcerendereffect.lub" "%destinationDataPath%\luafiles514\lua files\effecttool\forcerendereffect.lub"* /H /C /I /Y
	) else if %lua% equ 17 (
		if %date% geq 20240417 (
			xcopy "%sourceDataPath%\luafiles514\lua files\hateffectinfo\hateffectinfo.lub" "%destinationDataPath%\luafiles514\lua files\hateffectinfo\hateffectinfo.lub"* /H /C /I /Y
		) else (
			echo These files for hateffects are only supported by 2024-04-17 clients or newer!
			pause
			goto DataLua
		)
	) else if %lua% equ 18 (
		xcopy "%sourceDataPath%\luafiles514\lua files\skilleffectinfo\actorstate.lub" "%destinationDataPath%\luafiles514\lua files\skilleffectinfo\actorstate.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\skilleffectinfo\effectid.lub" "%destinationDataPath%\luafiles514\lua files\skilleffectinfo\effectid.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\skilleffectinfo\skilleffectinfolist.lub" "%destinationDataPath%\luafiles514\lua files\skilleffectinfo\skilleffectinfolist.lub"* /H /C /I /Y
	) else if %lua% equ 19 (
		xcopy "%sourceDataPath%\luafiles514\lua files\skillinfoz\jobinheritlist.lub" "%destinationDataPath%\luafiles514\lua files\skillinfoz\jobinheritlist.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\skillinfoz\skillid.lub" "%destinationDataPath%\luafiles514\lua files\skillinfoz\skillid.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\skillinfoz\skilltreeview.lub" "%destinationDataPath%\luafiles514\lua files\skillinfoz\skilltreeview.lub"* /H /C /I /Y
	) else if %lua% equ 20 (
		xcopy "%sourceDataPath%\luafiles514\lua files\stateicon\efstids.lub" "%destinationDataPath%\luafiles514\lua files\stateicon\efstids.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\stateicon\stateiconimginfo.lub" "%destinationDataPath%\luafiles514\lua files\stateicon\stateiconimginfo.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\stateicon\stateiconinfo.lub" "%destinationDataPath%\luafiles514\lua files\stateicon\stateiconinfo.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\stateicon\stateiconinfo_f.lub" "%destinationDataPath%\luafiles514\lua files\stateicon\stateiconinfo_f.lub"* /H /C /I /Y
	) else if %lua% equ 21 (
		xcopy "%sourceDataPath%\luafiles514\lua files\stylingshop\stylingshopinfo.lub" "%destinationDataPath%\luafiles514\lua files\stylingshop\stylingshopinfo.lub"* /H /C /I /Y
	) else if %lua% equ 22 (
		if %date% geq 20211028 (
			xcopy "%sourceDataPath%\luafiles514\lua files\ItemDBNameTbl.lub" "%destinationDataPath%\luafiles514\lua files\ItemDBNameTbl.lub"* /H /C /I /Y
		) else (
			echo This file is only supported by 2021-10-28 clients or newer!
			pause
			goto DataLua
		)
	)
if %lua% equ 1 (
    for /L %%i in (1,1,22) do (
        set lua_c[%%i]=[ Copied ]
		if %%i equ 17 (
			if %date% lss 20240417 set lua_c[%%i]=
		)
		if %%i equ 22 (
			if %date% lss 20211028 set lua_c[%%i]=
		)
    )
) else (
    set lua_c[%lua%]=[ Copied ]
)

	goto DataLua
	pause
	
:SysLua
	cls
	echo =================================================================
	echo System Folder
	echo =================================================================
	echo [0] Back to previous Menu
	echo [1] All in One Package %sys_c[1]%
	echo [2] ChangeMaterial.lub (2022-12-07 and newer) %sys_c[2]%
	echo [3] CheckAttendance.lub %sys_c[3]%
	echo [4] monster_size_effect.lub %sys_c[4]%
	echo [5] PetEvolution.lub %sys_c[5]%
	echo [6] PrivateAirplane.lub %sys_c[6]%
	echo [7] Signboard_C.lub %sys_c[7]%
	echo [8] OngoingQuests/RecommendedQuests_C.lub %sys_c[8]%
	echo [9] Rune Folder (2023-08-02 and newer) %sys_c[9]%
	echo =================================================================
	set /p sys="Now choose: "
	if %sys% equ 0 (
		goto AdditionsMenu
	) else if %sys% equ 1 (
		if %date% geq 20221207 (
			xcopy "%sourceSystemPath%\ChangeMaterial.lub" "%destinationSystemPath%\ChangeMaterial.lub"* /H /C /I /Y
		)
		xcopy "%sourceSystemPath%\CheckAttendance.lub" "%destinationSystemPath%\CheckAttendance.lub"* /H /C /I /Y
		xcopy "%sourceSystemPath%\PetEvolution.lub" "%destinationSystemPath%\PetEvolution.lub"* /H /C /I /Y
		xcopy "%sourceSystemPath%\PrivateAirplane.lub" "%destinationSystemPath%\PrivateAirplane.lub"* /H /C /I /Y
		xcopy "%sourceSystemPath%\Signboard_C.lub" "%destinationSystemPath%\Signboard_C.lub"* /H /C /I /Y
		xcopy "%sourceSystemPath%\OngoingQuests_C.lub" "%destinationSystemPath%\OngoingQuests_C.lub"* /H /C /I /Y
		xcopy "%sourceSystemPath%\RecommendedQuests_C.lub" "%destinationSystemPath%\RecommendedQuests_C.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\questinfo_f.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\questinfo_f.lub"* /H /C /I /Y
		if %date% leq 20170614 (
			xcopy "%sourceSystemPath%\monster_size_effect 20170614.lub" "%destinationSystemPath%\monster_size_effect.lub"* /H /C /I /Y
		) else (
			xcopy "%sourceSystemPath%\monster_size_effect.lub" "%destinationSystemPath%\monster_size_effect.lub"* /H /C /I /Y
		)
		if %date% geq 20230802 (
			xcopy "%sourceSystemPath%\Rune\" "%destinationSystemPath%\Rune\"* /E /H /C /I /Y
		)
	) else if %sys% equ 2 (
		if %date% geq 20221207 (
			xcopy "%sourceSystemPath%\ChangeMaterial.lub" "%destinationSystemPath%\ChangeMaterial.lub"* /H /C /I /Y
		) else (
			echo This file is only supported by 2022-12-07 clients or newer!
			pause
			goto SysLua
		)
	) else if %sys% equ 3 (
		xcopy "%sourceSystemPath%\CheckAttendance.lub" "%destinationSystemPath%\CheckAttendance.lub"* /H /C /I /Y
	) else if %sys% equ 4 (
		if %date% leq 20170614 (
			xcopy "%sourceSystemPath%\monster_size_effect 20170614.lub" "%destinationSystemPath%\monster_size_effect.lub"* /H /C /I /Y
		) else (
			xcopy "%sourceSystemPath%\monster_size_effect.lub" "%destinationSystemPath%\monster_size_effect.lub"* /H /C /I /Y
		)
	) else if %sys% equ 5 (
		xcopy "%sourceSystemPath%\PetEvolution.lub" "%destinationSystemPath%\PetEvolution.lub"* /H /C /I /Y
	) else if %sys% equ 6 (
		xcopy "%sourceSystemPath%\PrivateAirplane.lub" "%destinationSystemPath%\PrivateAirplane.lub"* /H /C /I /Y
	) else if %sys% equ 7 (
		xcopy "%sourceSystemPath%\Signboard_C.lub" "%destinationSystemPath%\Signboard_C.lub"* /H /C /I /Y
	) else if %sys% equ 8 (
		xcopy "%sourceSystemPath%\OngoingQuests_C.lub" "%destinationSystemPath%\OngoingQuests_C.lub"* /H /C /I /Y
		xcopy "%sourceSystemPath%\RecommendedQuests_C.lub" "%destinationSystemPath%\RecommendedQuests_C.lub"* /H /C /I /Y
		xcopy "%sourceDataPath%\luafiles514\lua files\datainfo\questinfo_f.lub" "%destinationDataPath%\luafiles514\lua files\datainfo\questinfo_f.lub"* /H /C /I /Y
	) else if %sys% equ 9 (
		if %date% geq 20230802 (
			xcopy "%sourceSystemPath%\Rune\" "%destinationSystemPath%\Rune\" /E /H /C /I /Y
		) else (
			echo These files is only supported by 2023-08-02 clients or newer!
			pause
			goto SysLua
		)
	)
    if %sys% equ 1 (
        for /L %%i in (1,1,9) do (
            set sys_c[%%i]=[ Copied ]
			if %%i equ 2 (
				if %date% lss 20221207 set sys_c[%%i]=
			)
			if %%i equ 9 (
				if %date% lss 20230802 set sys_c[%%i]=
			)
        )
    ) else (
		set sys_c[%sys%]=[ Copied ]
	)
	goto SysLua
	pause

	
:DataMaps
	cls
	echo =================================================================
	echo Legacy Maps
	echo =================================================================
	echo [0] Back to previous Menu
	echo [1] All in One Package %omaps[1]%
	echo [2] Airport Maps (Einbroch, Lighthalzen, Yuno) %omaps[2]%
	echo [3] gefenia01.rsw %omaps[3]%
	echo [4] tur_d03_i.rsw %omaps[4]%
	echo [5] aldeg_cas01.rsw %omaps[5]%
	echo [6] gef_fild02.rsw %omaps[6]%
	echo [7] gl_cas01.rsw %omaps[7]%
	echo [8] mjolnir_07.rsw %omaps[8]%
	echo [9] mjolnir_08.rsw %omaps[9]%
	echo [10] mjolnir_09.rsw %omaps[10]%
	echo [11] mjolnir_10.rsw %omaps[11]%
	echo [11] mjolnir_11.rsw %omaps[12]%
	echo [13] moc_fild01.rsw %omaps[13]%
	echo [14] paramk.rsw %omaps[14]%
	echo [15] pay_fild04.rsw %omaps[15]%
	echo [16] prt_fild00.rsw %omaps[16]%
	echo [17] prt_fild01.rsw %omaps[17]%
	echo [18] prt_fild02.rsw %omaps[18]%
	echo [19] prt_fild03.rsw %omaps[19]%
	echo [20] prt_fild04.rsw %omaps[20]%
	echo [21] prt_fild05.rsw %omaps[21]%
	echo [22] prt_fild06.rsw %omaps[22]%
	echo [23] prt_fild07.rsw %omaps[23]%
	echo [24] prt_fild09.rsw %omaps[24]%
	echo [25] prt_fild10.rsw %omaps[25]%
	echo [26] 2009rwc_ Maps %omaps[26]%
	echo [27] 2012rwc_ Maps %omaps[27]%
	echo [28] poring_c01 %omaps[28]%
	echo [29] poring_c02 %omaps[29]%
	echo [30] sch_lab %omaps[30]%
	echo [31] airplane %omaps[31]%
	echo [32] payon %omaps[32]%
	echo [33] ra_temple %omaps[33]%
	echo [34] spl_fild01 %omaps[34]%
	echo =================================================================
	set /p map="Choose which maps you want to copy: "
	if %map% equ 0 (
		goto AdditionsMenu
	) else if %map% equ 1 (
		xcopy "%sourceDataPath%\einbroch.gat" "%destinationDataPath%\einbroch.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\einbroch.gnd" "%destinationDataPath%\einbroch.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\einbroch.rsw" "%destinationDataPath%\einbroch.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\lighthalzen.gat" "%destinationDataPath%\lighthalzen.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\lighthalzen.gnd" "%destinationDataPath%\lighthalzen.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\lighthalzen.rsw" "%destinationDataPath%\lighthalzen.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\yuno.gat" "%destinationDataPath%\yuno.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\yuno.gnd" "%destinationDataPath%\yuno.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\yuno.rsw" "%destinationDataPath%\yuno.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\gefenia01.rsw" "%destinationDataPath%\gefenia01.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\tur_d03_i.rsw" "%destinationDataPath%\tur_d03_i.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\aldeg_cas01.rsw" "%destinationDataPath%\aldeg_cas01.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\gef_fild02.rsw" "%destinationDataPath%\gef_fild02.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\gl_cas01.rsw" "%destinationDataPath%\gl_cas01.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\mjolnir_07.rsw" "%destinationDataPath%\mjolnir_07.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\mjolnir_08.rsw" "%destinationDataPath%\mjolnir_08.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\mjolnir_09.rsw" "%destinationDataPath%\mjolnir_09.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\mjolnir_10.rsw" "%destinationDataPath%\mjolnir_10.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\mjolnir_11.rsw" "%destinationDataPath%\mjolnir_11.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\moc_fild01.rsw" "%destinationDataPath%\moc_fild01.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\paramk.rsw" "%destinationDataPath%\paramk.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\pay_fild04.rsw" "%destinationDataPath%\pay_fild04.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\prt_fild00.rsw" "%destinationDataPath%\prt_fild00.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\prt_fild01.rsw" "%destinationDataPath%\prt_fild01.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\prt_fild02.rsw" "%destinationDataPath%\prt_fild02.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\prt_fild03.rsw" "%destinationDataPath%\prt_fild03.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\prt_fild04.rsw" "%destinationDataPath%\prt_fild04.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\prt_fild05.rsw" "%destinationDataPath%\prt_fild05.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\prt_fild06.rsw" "%destinationDataPath%\prt_fild06.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\prt_fild07.rsw" "%destinationDataPath%\prt_fild07.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\prt_fild09.rsw" "%destinationDataPath%\prt_fild09.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\prt_fild10.rsw" "%destinationDataPath%\prt_fild10.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_01.gat" "%destinationDataPath%\2009rwc_01.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_01.gnd" "%destinationDataPath%\2009rwc_01.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_01.rsw" "%destinationDataPath%\2009rwc_01.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_01.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_01.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_02.gat" "%destinationDataPath%\2009rwc_02.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_02.gnd" "%destinationDataPath%\2009rwc_02.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_02.rsw" "%destinationDataPath%\2009rwc_02.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_02.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_02.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_03.gat" "%destinationDataPath%\2009rwc_03.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_03.gnd" "%destinationDataPath%\2009rwc_03.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_03.rsw" "%destinationDataPath%\2009rwc_03.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_03.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_03.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_04.gat" "%destinationDataPath%\2009rwc_04.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_04.gnd" "%destinationDataPath%\2009rwc_04.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_04.rsw" "%destinationDataPath%\2009rwc_04.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_04.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_04.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_05.gat" "%destinationDataPath%\2009rwc_05.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_05.gnd" "%destinationDataPath%\2009rwc_05.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_05.rsw" "%destinationDataPath%\2009rwc_05.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_05.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_05.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_06.gat" "%destinationDataPath%\2009rwc_06.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_06.gnd" "%destinationDataPath%\2009rwc_06.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_06.rsw" "%destinationDataPath%\2009rwc_06.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_06.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_06.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_07.gat" "%destinationDataPath%\2009rwc_07.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_07.gnd" "%destinationDataPath%\2009rwc_07.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_07.rsw" "%destinationDataPath%\2009rwc_07.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_07.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_07.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_08.gat" "%destinationDataPath%\2009rwc_08.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_08.gnd" "%destinationDataPath%\2009rwc_08.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_08.rsw" "%destinationDataPath%\2009rwc_08.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_08.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_08.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_f01.gat" "%destinationDataPath%\2009rwc_f01.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_f01.gnd" "%destinationDataPath%\2009rwc_f01.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_f01.rsw" "%destinationDataPath%\2009rwc_f01.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_f01.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_f01.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_01.gat" "%destinationDataPath%\2012rwc_01.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_01.gnd" "%destinationDataPath%\2012rwc_01.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_01.rsw" "%destinationDataPath%\2012rwc_01.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_02.gat" "%destinationDataPath%\2012rwc_02.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_02.gnd" "%destinationDataPath%\2012rwc_02.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_02.rsw" "%destinationDataPath%\2012rwc_02.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_03.gat" "%destinationDataPath%\2012rwc_03.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_03.gnd" "%destinationDataPath%\2012rwc_03.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_03.rsw" "%destinationDataPath%\2012rwc_03.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_04.gat" "%destinationDataPath%\2012rwc_04.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_04.gnd" "%destinationDataPath%\2012rwc_04.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_04.rsw" "%destinationDataPath%\2012rwc_04.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_05.gat" "%destinationDataPath%\2012rwc_05.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_05.gnd" "%destinationDataPath%\2012rwc_05.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_05.rsw" "%destinationDataPath%\2012rwc_05.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_06.gat" "%destinationDataPath%\2012rwc_06.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_06.gnd" "%destinationDataPath%\2012rwc_06.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_06.rsw" "%destinationDataPath%\2012rwc_06.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_07.gat" "%destinationDataPath%\2012rwc_07.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_07.gnd" "%destinationDataPath%\2012rwc_07.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_07.rsw" "%destinationDataPath%\2012rwc_07.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_08.gat" "%destinationDataPath%\2012rwc_08.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_08.gnd" "%destinationDataPath%\2012rwc_08.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_08.rsw" "%destinationDataPath%\2012rwc_08.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\poring_c01.gat" "%destinationDataPath%\poring_c01.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\poring_c01.gnd" "%destinationDataPath%\poring_c01.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\poring_c01.rsw" "%destinationDataPath%\poring_c01.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\poring_c01.bmp" "%destinationDataPath%\texture\유저인터페이스\map\poring_c01.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\poring_c02.gat" "%destinationDataPath%\poring_c02.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\poring_c02.gnd" "%destinationDataPath%\poring_c02.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\poring_c02.rsw" "%destinationDataPath%\poring_c02.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\poring_c02.bmp" "%destinationDataPath%\texture\유저인터페이스\map\poring_c02.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\sch_lab.gat" "%destinationDataPath%\sch_lab.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\sch_lab.gnd" "%destinationDataPath%\sch_lab.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\sch_lab.rsw" "%destinationDataPath%\sch_lab.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\airplane.rsw" "%destinationDataPath%\airplane.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\payon.gat" "%destinationDataPath%\payon.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\payon.gnd" "%destinationDataPath%\payon.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\payon.rsw" "%destinationDataPath%\payon.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\payon.bmp" "%destinationDataPath%\texture\유저인터페이스\map\payon.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\ra_temple.gat" "%destinationDataPath%\ra_temple.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\ra_temple.gnd" "%destinationDataPath%\ra_temple.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\ra_temple.rsw" "%destinationDataPath%\ra_temple.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\spl_fild01.rsw" "%destinationDataPath%\spl_fild01.rsw"* /H /C /I /Y
	) else if %map% equ 2 (
		xcopy "%sourceDataPath%\einbroch.gat" "%destinationDataPath%\einbroch.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\einbroch.gnd" "%destinationDataPath%\einbroch.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\einbroch.rsw" "%destinationDataPath%\einbroch.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\lighthalzen.gat" "%destinationDataPath%\lighthalzen.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\lighthalzen.gnd" "%destinationDataPath%\lighthalzen.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\lighthalzen.rsw" "%destinationDataPath%\lighthalzen.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\yuno.gat" "%destinationDataPath%\yuno.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\yuno.gnd" "%destinationDataPath%\yuno.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\yuno.rsw" "%destinationDataPath%\yuno.rsw"* /H /C /I /Y
	) else if %map% equ 3 (
		xcopy "%sourceDataPath%\gefenia01.rsw" "%destinationDataPath%\gefenia01.rsw"* /H /C /I /Y
	) else if %map% equ 4 (
		xcopy "%sourceDataPath%\tur_d03_i.rsw" "%destinationDataPath%\tur_d03_i.rsw"* /H /C /I /Y
	) else if %map% equ 5 (
		xcopy "%sourceDataPath%\aldeg_cas01.rsw" "%destinationDataPath%\aldeg_cas01.rsw"* /H /C /I /Y
	) else if %map% equ 6 (
		xcopy "%sourceDataPath%\gef_fild02.rsw" "%destinationDataPath%\gef_fild02.rsw"* /H /C /I /Y
	) else if %map% equ 7 (
		xcopy "%sourceDataPath%\gl_cas01.rsw" "%destinationDataPath%\gl_cas01.rsw"* /H /C /I /Y
	) else if %map% equ 8 (
		xcopy "%sourceDataPath%\mjolnir_07.rsw" "%destinationDataPath%\mjolnir_07.rsw"* /H /C /I /Y
	) else if %map% equ 9 (
		xcopy "%sourceDataPath%\mjolnir_08.rsw" "%destinationDataPath%\mjolnir_08.rsw"* /H /C /I /Y
	) else if %map% equ 10 (
		xcopy "%sourceDataPath%\mjolnir_09.rsw" "%destinationDataPath%\mjolnir_09.rsw"* /H /C /I /Y
	) else if %map% equ 11 (
		xcopy "%sourceDataPath%\mjolnir_10.rsw" "%destinationDataPath%\mjolnir_10.rsw"* /H /C /I /Y
	) else if %map% equ 12 (
		xcopy "%sourceDataPath%\mjolnir_11.rsw" "%destinationDataPath%\mjolnir_11.rsw"* /H /C /I /Y
	) else if %map% equ 13 (
		xcopy "%sourceDataPath%\moc_fild01.rsw" "%destinationDataPath%\moc_fild01.rsw"* /H /C /I /Y
	) else if %map% equ 14 (
		xcopy "%sourceDataPath%\paramk.rsw" "%destinationDataPath%\paramk.rsw"* /H /C /I /Y
	) else if %map% equ 15 (
		xcopy "%sourceDataPath%\pay_fild04.rsw" "%destinationDataPath%\pay_fild04.rsw"* /H /C /I /Y
	) else if %map% equ 16 (
		xcopy "%sourceDataPath%\prt_fild00.rsw" "%destinationDataPath%\prt_fild00.rsw"* /H /C /I /Y
	) else if %map% equ 17 (
		xcopy "%sourceDataPath%\prt_fild01.rsw" "%destinationDataPath%\prt_fild01.rsw"* /H /C /I /Y
	) else if %map% equ 18 (
		xcopy "%sourceDataPath%\prt_fild02.rsw" "%destinationDataPath%\prt_fild02.rsw"* /H /C /I /Y
	) else if %map% equ 19 (
		xcopy "%sourceDataPath%\prt_fild03.rsw" "%destinationDataPath%\prt_fild03.rsw"* /H /C /I /Y
	) else if %map% equ 20 (
		xcopy "%sourceDataPath%\prt_fild04.rsw" "%destinationDataPath%\prt_fild04.rsw"* /H /C /I /Y
	) else if %map% equ 21 (
		xcopy "%sourceDataPath%\prt_fild05.rsw" "%destinationDataPath%\prt_fild05.rsw"* /H /C /I /Y
	) else if %map% equ 22 (
		xcopy "%sourceDataPath%\prt_fild06.rsw" "%destinationDataPath%\prt_fild06.rsw"* /H /C /I /Y
	) else if %map% equ 23 (
		xcopy "%sourceDataPath%\prt_fild07.rsw" "%destinationDataPath%\prt_fild07.rsw"* /H /C /I /Y
	) else if %map% equ 24 (
		xcopy "%sourceDataPath%\prt_fild09.rsw" "%destinationDataPath%\prt_fild09.rsw"* /H /C /I /Y
	) else if %map% equ 25 (
		xcopy "%sourceDataPath%\prt_fild10.rsw" "%destinationDataPath%\prt_fild10.rsw"* /H /C /I /Y
	) else if %map% equ 26 (
		xcopy "%sourceDataPath%\2009rwc_01.gat" "%destinationDataPath%\2009rwc_01.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_01.gnd" "%destinationDataPath%\2009rwc_01.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_01.rsw" "%destinationDataPath%\2009rwc_01.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_01.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_01.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_02.gat" "%destinationDataPath%\2009rwc_02.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_02.gnd" "%destinationDataPath%\2009rwc_02.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_02.rsw" "%destinationDataPath%\2009rwc_02.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_02.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_02.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_03.gat" "%destinationDataPath%\2009rwc_03.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_03.gnd" "%destinationDataPath%\2009rwc_03.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_03.rsw" "%destinationDataPath%\2009rwc_03.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_03.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_03.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_04.gat" "%destinationDataPath%\2009rwc_04.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_04.gnd" "%destinationDataPath%\2009rwc_04.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_04.rsw" "%destinationDataPath%\2009rwc_04.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_04.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_04.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_05.gat" "%destinationDataPath%\2009rwc_05.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_05.gnd" "%destinationDataPath%\2009rwc_05.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_05.rsw" "%destinationDataPath%\2009rwc_05.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_05.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_05.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_06.gat" "%destinationDataPath%\2009rwc_06.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_06.gnd" "%destinationDataPath%\2009rwc_06.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_06.rsw" "%destinationDataPath%\2009rwc_06.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_06.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_06.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_07.gat" "%destinationDataPath%\2009rwc_07.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_07.gnd" "%destinationDataPath%\2009rwc_07.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_07.rsw" "%destinationDataPath%\2009rwc_07.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_07.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_07.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_08.gat" "%destinationDataPath%\2009rwc_08.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_08.gnd" "%destinationDataPath%\2009rwc_08.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_08.rsw" "%destinationDataPath%\2009rwc_08.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_08.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_08.bmp"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_f01.gat" "%destinationDataPath%\2009rwc_f01.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_f01.gnd" "%destinationDataPath%\2009rwc_f01.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2009rwc_f01.rsw" "%destinationDataPath%\2009rwc_f01.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\2009rwc_f01.bmp" "%destinationDataPath%\texture\유저인터페이스\map\2009rwc_f01.bmp"* /H /C /I /Y
	) else if %map% equ 27 (
		xcopy "%sourceDataPath%\2012rwc_01.gat" "%destinationDataPath%\2012rwc_01.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_01.gnd" "%destinationDataPath%\2012rwc_01.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_01.rsw" "%destinationDataPath%\2012rwc_01.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_02.gat" "%destinationDataPath%\2012rwc_02.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_02.gnd" "%destinationDataPath%\2012rwc_02.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_02.rsw" "%destinationDataPath%\2012rwc_02.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_03.gat" "%destinationDataPath%\2012rwc_03.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_03.gnd" "%destinationDataPath%\2012rwc_03.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_03.rsw" "%destinationDataPath%\2012rwc_03.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_04.gat" "%destinationDataPath%\2012rwc_04.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_04.gnd" "%destinationDataPath%\2012rwc_04.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_04.rsw" "%destinationDataPath%\2012rwc_04.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_05.gat" "%destinationDataPath%\2012rwc_05.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_05.gnd" "%destinationDataPath%\2012rwc_05.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_05.rsw" "%destinationDataPath%\2012rwc_05.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_06.gat" "%destinationDataPath%\2012rwc_06.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_06.gnd" "%destinationDataPath%\2012rwc_06.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_06.rsw" "%destinationDataPath%\2012rwc_06.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_07.gat" "%destinationDataPath%\2012rwc_07.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_07.gnd" "%destinationDataPath%\2012rwc_07.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_07.rsw" "%destinationDataPath%\2012rwc_07.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_08.gat" "%destinationDataPath%\2012rwc_08.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_08.gnd" "%destinationDataPath%\2012rwc_08.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\2012rwc_08.rsw" "%destinationDataPath%\2012rwc_08.rsw"* /H /C /I /Y
	) else if %map% equ 28 (
		xcopy "%sourceDataPath%\poring_c01.gat" "%destinationDataPath%\poring_c01.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\poring_c01.gnd" "%destinationDataPath%\poring_c01.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\poring_c01.rsw" "%destinationDataPath%\poring_c01.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\poring_c01.bmp" "%destinationDataPath%\texture\유저인터페이스\map\poring_c01.bmp"* /H /C /I /Y
	) else if %map% equ 29 (
		xcopy "%sourceDataPath%\poring_c02.gat" "%destinationDataPath%\poring_c02.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\poring_c02.gnd" "%destinationDataPath%\poring_c02.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\poring_c02.rsw" "%destinationDataPath%\poring_c02.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\poring_c02.bmp" "%destinationDataPath%\texture\유저인터페이스\map\poring_c02.bmp"* /H /C /I /Y
	) else if %map% equ 30 (
		xcopy "%sourceDataPath%\sch_lab.gat" "%destinationDataPath%\sch_lab.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\sch_lab.gnd" "%destinationDataPath%\sch_lab.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\sch_lab.rsw" "%destinationDataPath%\sch_lab.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\sch_lab.bmp" "%destinationDataPath%\texture\유저인터페이스\map\sch_lab.bmp"* /H /C /I /Y
	) else if %map% equ 31 (
		xcopy "%sourceDataPath%\airplane.rsw" "%destinationDataPath%\airplane.rsw"* /H /C /I /Y
	) else if %map% equ 32 (
		xcopy "%sourceDataPath%\payon.gat" "%destinationDataPath%\payon.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\payon.gnd" "%destinationDataPath%\payon.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\payon.rsw" "%destinationDataPath%\payon.rsw"* /H /C /I /Y
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\payon.bmp" "%destinationDataPath%\texture\유저인터페이스\map\payon.bmp"* /H /C /I /Y
	) else if %map% equ 33 (
		xcopy "%sourceDataPath%\ra_temple.gat" "%destinationDataPath%\ra_temple.gat"* /H /C /I /Y
		xcopy "%sourceDataPath%\ra_temple.gnd" "%destinationDataPath%\ra_temple.gnd"* /H /C /I /Y
		xcopy "%sourceDataPath%\ra_temple.rsw" "%destinationDataPath%\ra_temple.rsw"* /H /C /I /Y
	) else if %map% equ 34 (
		xcopy "%sourceDataPath%\spl_fild01.rsw" "%destinationDataPath%\spl_fild01.rsw"* /H /C /I /Y
	)
    if %map% equ 1 (
        for /L %%i in (1,1,34) do (
            set omaps[%%i]=[ Copied ]
        )
    ) else (
		set omaps[%map%]=[ Copied ]
	)
	goto DataMaps
	pause
	
:MiniMaps
	cls
	echo =================================================================
	echo Legacy Minimaps
	echo =================================================================
	echo [0] Back to previous Menu
	echo [1] All in One Package %mmaps[1]%
	echo [2] ama_dun01 %mmaps[2]%
	echo [3] ayo_dun01 %mmaps[3]%
	echo [4] ice_dun04 %mmaps[4]%
	echo [5] map2_int %mmaps[5]%
	echo [6] new_zone02 %mmaps[6]%
	echo [7] new_zone04 %mmaps[7]%
	echo [8] ra_temsky %mmaps[8]%
	echo [9] tha_t07 %mmaps[9]%
	echo [10] tha_t08 %mmaps[10]%
	echo [11] thana_boss %mmaps[11]%
	echo [12] tur_dun05 %mmaps[12]%
	echo [13] tur_dun06 %mmaps[13]%
	echo [14] yggdrasil01 %mmaps[14]%
	echo [15] yuno_in02 %mmaps[15]%
	echo =================================================================
	set /p bmap="Choose which minimaps you want to copy: "
	if %bmap% equ 0 (
		goto AdditionsMenu
	) else if %bmap% equ 1 (
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\" "%destinationDataPath%\texture\유저인터페이스\map\"* /H /C /I /Y
	) else if %bmap% equ 2 (
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\ama_dun01.bmp" "%destinationDataPath%\texture\유저인터페이스\map\ama_dun01.bmp"* /H /C /I /Y
	) else if %bmap% equ 3 (
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\ayo_dun01.bmp" "%destinationDataPath%\texture\유저인터페이스\map\ayo_dun01.bmp"* /H /C /I /Y
	) else if %bmap% equ 4 (
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\ice_dun04.bmp" "%destinationDataPath%\texture\유저인터페이스\map\ice_dun04.bmp"* /H /C /I /Y
	) else if %bmap% equ 5 (
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\map2_int.bmp" "%destinationDataPath%\texture\유저인터페이스\map\map2_int.bmp"* /H /C /I /Y
	) else if %bmap% equ 6 (
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\new_zone02.bmp" "%destinationDataPath%\texture\유저인터페이스\map\new_zone02.bmp"* /H /C /I /Y
	) else if %bmap% equ 7 (
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\new_zone04.bmp" "%destinationDataPath%\texture\유저인터페이스\map\new_zone04.bmp"* /H /C /I /Y
	) else if %bmap% equ 8 (
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\ra_temsky.bmp" "%destinationDataPath%\texture\유저인터페이스\map\ra_temsky.bmp"* /H /C /I /Y
	) else if %bmap% equ 9 (
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\tha_t07.bmp" "%destinationDataPath%\texture\유저인터페이스\map\tha_t07.bmp"* /H /C /I /Y
	) else if %bmap% equ 10 (
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\tha_t08.bmp" "%destinationDataPath%\texture\유저인터페이스\map\tha_t08.bmp"* /H /C /I /Y
	) else if %bmap% equ 11 (
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\thana_boss.bmp" "%destinationDataPath%\texture\유저인터페이스\map\thana_boss.bmp"* /H /C /I /Y
	) else if %bmap% equ 12 (
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\tur_dun05.bmp" "%destinationDataPath%\texture\유저인터페이스\map\tur_dun05.bmp"* /H /C /I /Y
	) else if %bmap% equ 13 (
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\tur_dun06.bmp" "%destinationDataPath%\texture\유저인터페이스\map\tur_dun06.bmp"* /H /C /I /Y
	) else if %bmap% equ 14 (
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\yggdrasil01.bmp" "%destinationDataPath%\texture\유저인터페이스\map\yggdrasil01.bmp"* /H /C /I /Y
	) else if %bmap% equ 15 (
		xcopy "%sourceDataPath%\texture\유저인터페이스\map\yuno_in02.bmp" "%destinationDataPath%\texture\유저인터페이스\map\yuno_in02.bmp"* /H /C /I /Y
	)
    if %bmap% equ 1 (
        for /L %%i in (1,1,15) do (
            set mmaps[%%i]=[ Copied ]
        )
    ) else (
		set mmaps[%bmap%]=[ Copied ]
	)
	goto MiniMaps
	pause