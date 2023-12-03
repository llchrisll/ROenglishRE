@echo off
echo =================================================================
echo Welcome to the Custom Lua Support Generator!
echo This will help you to copy over the files you want and need based on the choice you make.
echo It will loop itself until you close the program or choose Exit.
echo =================================================================
pause
if exist "Client\data\luafiles514\lua files\cls" rmdir /Q /S "Client\data\luafiles514\lua files\cls\"
:CLSMenu
cls
echo ===============
echo [1] All In One Package %cls[0]%
echo [2] Headgears %cls[1]%
echo [3] Random Options %cls[2]%
echo [4] HatEffects %cls[3]%
echo [5] NPC/Mob and Pets %cls[4]%
echo [6] Lapine Boxes %cls[5]%
echo [7] Navigation %cls[6]%
echo [8] Quests %cls[7]%
echo [9] Signboards %cls[8]%
echo [10] Robes/Costume Garments %cls[9]%
echo [11] Titles %cls[10]%
echo [12] Weapons %cls[11]%
echo [13] World Map %cls[12]%
echo [14] Exit
echo ===============
set /p type="Now choose:"
if %type%==1 (
	xcopy "..\Addons\Custom Lua Support\" ".\Client\" /E /H /C /I /Y
	set cls[0]=Copied
)
if %type%==2 (
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\accessoryid.lub" ".\Client\data\luafiles514\lua files\cls\accessoryid.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\accname.lub" ".\Client\data\luafiles514\lua files\cls\accname.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\accname_f.lub" ".\Client\data\luafiles514\lua files\cls\accname_f.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\datainfo\TB_Layer_Priority.lub" ".\Client\data\luafiles514\lua files\datainfo\TB_Layer_Priority.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\tb_layer_priority.lub" ".\Client\data\luafiles514\lua files\cls\tb_layer_priority.lub"* /E /H /C /I /Y
	set cls[1]=Copied
)
if %type%==3 (
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\enumvar.lub" ".\Client\data\luafiles514\lua files\cls\enumvar.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\randomoption.lub" ".\Client\data\luafiles514\lua files\cls\randomoption.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\addrandomoption_f.lub" ".\Client\data\luafiles514\lua files\cls\addrandomoption_f.lub"* /E /H /C /I /Y
	set cls[2]=Copied
)
if %type%==4 (
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\hateffectinfo\hateffectinfo.lub" ".\Client\data\luafiles514\lua files\hateffectinfo\hateffectinfo.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\hateffectinfo.lub" ".\Client\data\luafiles514\lua files\cls\hateffectinfo.lub"* /E /H /C /I /Y
	set cls[3]=Copied
)
if %type%==5 (
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\jobname.lub" ".\Client\data\luafiles514\lua files\cls\jobname.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\jobname_f.lub" ".\Client\data\luafiles514\lua files\cls\jobname_f.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\npcidentity.lub" ".\Client\data\luafiles514\lua files\cls\npcidentity.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\petinfo.lub" ".\Client\data\luafiles514\lua files\cls\petinfo.lub"* /E /H /C /I /Y
	set cls[4]=Copied
)
if %type%==6 (
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\datainfo\lapineddukddakbox.lub" ".\Client\data\luafiles514\lua files\datainfo\lapineddukddakbox.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\datainfo\LapineUpgradeBox.lub" ".\Client\data\luafiles514\lua files\datainfo\LapineUpgradeBox.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\lapineddukddakbox.lub" ".\Client\data\luafiles514\lua files\cls\lapineddukddakbox.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\lapineupgradebox.lub" ".\Client\data\luafiles514\lua files\cls\lapineupgradebox.lub"* /E /H /C /I /Y
	set cls[5]=Copied
)
if %type%==7 (
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\navigation\navi_f_krpri.lub" ".\Client\data\luafiles514\lua files\navigation\navi_f_krpri.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\navigation\navi_f_krsak.lub" ".\Client\data\luafiles514\lua files\navigation\navi_f_krsak.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\navi_link.lub" ".\Client\data\luafiles514\lua files\cls\navi_link.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\navi_linkdistance.lub" ".\Client\data\luafiles514\lua files\cls\navi_linkdistance.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\navi_map.lub" ".\Client\data\luafiles514\lua files\cls\navi_map.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\navi_mob.lub" ".\Client\data\luafiles514\lua files\cls\navi_mob.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\navi_npc.lub" ".\Client\data\luafiles514\lua files\cls\navi_npc.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\navi_npcdistance.lub" ".\Client\data\luafiles514\lua files\cls\navi_npcdistance.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\navi_picknpc.lub" ".\Client\data\luafiles514\lua files\cls\navi_picknpc.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\navi_scroll.lub" ".\Client\data\luafiles514\lua files\cls\navi_scroll.lub"* /E /H /C /I /Y
	set cls[6]=Copied
)
if %type%==8 (
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\questinfo_f.lub" ".\Client\data\luafiles514\lua files\cls\questinfo_f.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\System\OngoingQuests_CLS.lub" ".\Client\System\OngoingQuests_CLS.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\System\RecommendedQuests_CLS.lub" ".\Client\System\RecommendedQuests_CLS.lub"* /E /H /C /I /Y
	set cls[7]=Copied
)
if %type%==9 (
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\signboardlist.lub" ".\Client\data\luafiles514\lua files\cls\signboardlist.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\signboardlist_f.lub" ".\Client\data\luafiles514\lua files\cls\signboardlist_f.lub"* /E /H /C /I /Y
	set cls[8]=Copied
)
if %type%==10 (
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\spriterobeid.lub" ".\Client\data\luafiles514\lua files\cls\spriterobeid.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\spriterobename.lub" ".\Client\data\luafiles514\lua files\cls\spriterobename.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\spriterobename_f.lub" ".\Client\data\luafiles514\lua files\cls\spriterobename_f.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\transparentitem.lub" ".\Client\data\luafiles514\lua files\cls\transparentitem.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\transparentitem_f.lub" ".\Client\data\luafiles514\lua files\cls\transparentitem_f.lub"* /E /H /C /I /Y
	set cls[9]=Copied
)
if %type%==11 (
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\datainfo\titletable.lub" ".\Client\data\luafiles514\lua files\datainfo\titletable.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\titletable.lub" ".\Client\data\luafiles514\lua files\cls\titletable.lub"* /E /H /C /I /Y
	set cls[10]=Copied
)
if %type%==12 (
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\weapontable.lub" ".\Client\data\luafiles514\lua files\cls\weapontable.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\weapontable_f.lub" ".\Client\data\luafiles514\lua files\cls\weapontable_f.lub"* /E /H /C /I /Y
	set cls[11]=Copied
)
if %type%==13 (
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\worldviewdata_f.lub" ".\Client\data\luafiles514\lua files\cls\worldviewdata_f.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\worldviewdata_language.lub" ".\Client\data\luafiles514\lua files\cls\worldviewdata_language.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\worldviewdata_list.lub" ".\Client\data\luafiles514\lua files\cls\worldviewdata_list.lub"* /E /H /C /I /Y
	xcopy "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\worldviewdata_table.lub" ".\Client\data\luafiles514\lua files\cls\worldviewdata_table.lub"* /E /H /C /I /Y
	set cls[12]=Copied
)
if %type%==14 exit
pause
goto CLSMenu