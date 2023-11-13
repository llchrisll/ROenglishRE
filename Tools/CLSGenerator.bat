@echo off
echo Welcome to the Custom Lua Support Generator!
echo This will help you to copy over the files you want and need based on the choice you make.
echo It will loop itself until you either close the program or choose to exit it by typing any number higher than available.
echo.
pause
if exist "Client\data\luafiles514\lua files\cls" del /Q /S "Client\data\luafiles514\lua files\cls"
mkdir ".\Client\data\luafiles514\lua files\cls"
:CLSMenu
cls
echo ===============
echo [1] Headgears %hg%
echo [2] Random Options %roption%
echo [3] HatEffects %hatef%
echo [4] NPC/Mob and Pets %npc%
echo [5] Lapine Boxes %lapine%
echo [6] Navigation %navi%
echo [7] Quests %quest%
echo [8] Signboards %sign%
echo [9] Robes/Costume Garments %robe%
echo [10] Titles %title%
echo [11] Weapons %weapon%
echo [12] World Map %map%
echo [13] Done
echo ===============
set /p type="Now choose:"
if %type%==1 (
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\accessoryid.lub" ".\Client\data\luafiles514\lua files\cls\accessoryid.lub"
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\accname.lub" ".\Client\data\luafiles514\lua files\cls\accname.lub"
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\accname_f.lub" ".\Client\data\luafiles514\lua files\cls\accname_f.lub"
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\datainfo\TB_Layer_Priority.lub" ".\Client\data\luafiles514\lua files\datainfo\TB_Layer_Priority.lub"
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\tb_layer_priority.lub" ".\Client\data\luafiles514\lua files\cls\tb_layer_priority.lub"
	set hg=Copied
) else if %type%==2 (
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\enumvar.lub" ".\Client\data\luafiles514\lua files\cls\enumvar.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\randomoption.lub" ".\Client\data\luafiles514\lua files\cls\randomoption.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\addrandomoption_f.lub" ".\Client\data\luafiles514\lua files\cls\addrandomoption_f.lub
	set "roption=Copied"
) else if %type%==3 (
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\hateffectinfo\hateffectinfo.lub" ".\Client\data\luafiles514\lua files\hateffectinfo\hateffectinfo.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\hateffectinfo.lub" ".\Client\data\luafiles514\lua files\cls\hateffectinfo.lub
	set "hatef=Copied"
) else if %type%==4 (
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\jobname.lub" ".\Client\data\luafiles514\lua files\cls\jobname.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\jobname_f.lub" ".\Client\data\luafiles514\lua files\cls\jobname_f.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\npcidentity.lub" ".\Client\data\luafiles514\lua files\cls\npcidentity.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\petinfo.lub" ".\Client\data\luafiles514\lua files\cls\petinfo.lub
	set "npc=Copied"
) else if %type%==5 (
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\datainfo\lapineddukddakbox.lub" ".\Client\data\luafiles514\lua files\datainfo\lapineddukddakbox.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\datainfo\LapineUpgradeBox.lub" ".\Client\data\luafiles514\lua files\datainfo\LapineUpgradeBox.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\lapineddukddakbox.lub" ".\Client\data\luafiles514\lua files\cls\lapineddukddakbox.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\lapineupgradebox.lub" ".\Client\data\luafiles514\lua files\cls\lapineupgradebox.lub
	set "lapine=Copied"
) else if %type%==6 (
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\navigation\navi_f_krpri.lub" ".\Client\data\luafiles514\lua files\navigation\navi_f_krpri.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\navigation\navi_f_krsak.lub" ".\Client\data\luafiles514\lua files\navigation\navi_f_krsak.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\navi_link.lub" ".\Client\data\luafiles514\lua files\cls\navi_link.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\navi_linkdistance.lub" ".\Client\data\luafiles514\lua files\cls\navi_linkdistance.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\navi_map.lub" ".\Client\data\luafiles514\lua files\cls\navi_map.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\navi_mob.lub" ".\Client\data\luafiles514\lua files\cls\navi_mob.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\navi_npc.lub" ".\Client\data\luafiles514\lua files\cls\navi_npc.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\navi_npcdistance.lub" ".\Client\data\luafiles514\lua files\cls\navi_npcdistance.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\navi_picknpc.lub" ".\Client\data\luafiles514\lua files\cls\navi_picknpc.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\navi_scroll.lub" ".\Client\data\luafiles514\lua files\cls\navi_scroll.lub
	set "navi=Copied"
) else if %type%==7 (
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\questinfo_f.lub" ".\Client\data\luafiles514\lua files\cls\questinfo_f.lub
	copy /Y "..\Addons\Custom Lua Support\System\OngoingQuests_CLS.lub" ".\Client\System\OngoingQuests_CLS.lub
	copy /Y "..\Addons\Custom Lua Support\System\RecommendedQuests_CLS.lub" ".\Client\System\RecommendedQuests_CLS.lub
	set "quest=Copied"
) else if %type%==8 (
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\signboardlist.lub" ".\Client\data\luafiles514\lua files\cls\signboardlist.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\signboardlist_f.lub" ".\Client\data\luafiles514\lua files\cls\signboardlist_f.lub
	set "sign=Copied"
) else if %type%==9 (
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\spriterobeid.lub" ".\Client\data\luafiles514\lua files\cls\spriterobeid.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\spriterobename.lub" ".\Client\data\luafiles514\lua files\cls\spriterobename.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\spriterobename_f.lub" ".\Client\data\luafiles514\lua files\cls\spriterobename_f.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\transparentitem.lub" ".\Client\data\luafiles514\lua files\cls\transparentitem.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\transparentitem_f.lub" ".\Client\data\luafiles514\lua files\cls\transparentitem_f.lub
	set "robe=Copied"
) else if %type%==10 (
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\datainfo\titletable.lub" ".\Client\data\luafiles514\lua files\datainfo\titletable.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\titletable.lub" ".\Client\data\luafiles514\lua files\cls\titletable.lub
	set "title=Copied"
) else if %type%==11 (
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\weapontable.lub" ".\Client\data\luafiles514\lua files\cls\weapontable.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\weapontable_f.lub" ".\Client\data\luafiles514\lua files\cls\weapontable_f.lub
	set "weapon=Copied"
) else if %type%==12 (
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\worldviewdata_f.lub" ".\Client\data\luafiles514\lua files\cls\worldviewdata_f.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\worldviewdata_language.lub" ".\Client\data\luafiles514\lua files\cls\worldviewdata_language.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\worldviewdata_list.lub" ".\Client\data\luafiles514\lua files\cls\worldviewdata_list.lub
	copy /Y "..\Addons\Custom Lua Support\data\luafiles514\lua files\cls\worldviewdata_table.lub" ".\Client\data\luafiles514\lua files\cls\worldviewdata_table.lub
	set "map=Copied"
) else exit
pause
goto CLSMenu