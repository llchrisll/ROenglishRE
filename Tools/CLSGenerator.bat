@echo off
echo =================================================================
echo Welcome to the Custom Lua Support Generator!
echo.
echo The Custom Lua Support (or CLS) was created to assist you further
echo in adding your custom entries to seperate files, split from the
echo original files, so it's easier to update the translation files.
echo.
echo To use it you need to use the Nemo/WARP patches,
echo so these files can be read from your GRF.
echo A guide can be found on the Wiki.
echo.
echo This will help you to copy over the files you want and need based 
echo on the choice you make.
echo It will loop itself until you close the program or choose Exit.
echo =================================================================
pause

set "sourceDataPath=..\Addons\Custom Lua Support\data\luafiles514\lua files"
set "destinationDataPath=.\Client\data\luafiles514\lua files"

:CLSMenu
cls
echo ===============
echo [1] All In One Package %cls[1]%
echo [2] Headgears %cls[2]%
echo [3] Random Options %cls[3]%
echo [4] HatEffects %cls[4]%
echo [5] NPC/Mob and Pets %cls[5]%
echo [6] Lapine Boxes %cls[6]%
echo [7] Signboards %cls[8]%
echo [8] Robes/Costume Garments %cls[9]%
echo [9] Weapons %cls[11]%
echo [10] World Map %cls[12]%
echo [11] Exit
echo ===============
set /p type="Now choose: "

if %type% lss 11 (
    if exist "Client\data\luafiles514\lua files\cls" rmdir /Q /S "Client\data\luafiles514\lua files\cls\"
)

if %type% equ 1 (
    xcopy "..\Addons\Custom Lua Support\*" ".\Client\" /s /e /y
) else if %type% equ 2 (
    xcopy "%sourceDataPath%\cls\accessoryid.lub" "%destinationDataPath%\cls\accessoryid.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\accname.lub" "%destinationDataPath%\cls\accname.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\accname_f.lub" "%destinationDataPath%\cls\accname_f.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\datainfo\TB_Layer_Priority.lub" "%destinationDataPath%\datainfo\TB_Layer_Priority.lub"* /H /C /I /Y
) else if %type% equ 3 (
    xcopy "%sourceDataPath%\cls\enumvar.lub" "%destinationDataPath%\cls\enumvar.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\randomoption.lub" "%destinationDataPath%\cls\randomoption.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\addrandomoption_f.lub" "%destinationDataPath%\cls\addrandomoption_f.lub"* /H /C /I /Y
) else if %type% equ 4 (
    xcopy "%sourceDataPath%\hateffectinfo\hateffectinfo.lub" "%destinationDataPath%\hateffectinfo\hateffectinfo.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\hateffectinfo.lub" "%destinationDataPath%\cls\hateffectinfo.lub"* /H /C /I /Y
) else if %type% equ 5 (
    xcopy "%sourceDataPath%\cls\jobname.lub" "%destinationDataPath%\cls\jobname.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\jobname_f.lub" "%destinationDataPath%\cls\jobname_f.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\npcidentity.lub" "%destinationDataPath%\cls\npcidentity.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\petinfo.lub" "%destinationDataPath%\cls\petinfo.lub"* /H /C /I /Y
) else if %type% equ 6 (
    xcopy "%sourceDataPath%\datainfo\lapineddukddakbox.lub" "%destinationDataPath%\datainfo\lapineddukddakbox.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\datainfo\LapineUpgradeBox.lub" "%destinationDataPath%\datainfo\LapineUpgradeBox.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\lapineddukddakbox.lub" "%destinationDataPath%\cls\lapineddukddakbox.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\lapineupgradebox.lub" "%destinationDataPath%\cls\lapineupgradebox.lub"* /H /C /I /Y
) else if %type% equ 7 (
    xcopy "%sourceDataPath%\cls\signboardlist.lub" "%destinationDataPath%\cls\signboardlist.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\signboardlist_f.lub" "%destinationDataPath%\cls\signboardlist_f.lub"* /H /C /I /Y
) else if %type% equ 8 (
    xcopy "%sourceDataPath%\cls\spriterobeid.lub" "%destinationDataPath%\cls\spriterobeid.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\spriterobename.lub" "%destinationDataPath%\cls\spriterobename.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\spriterobename_f.lub" "%destinationDataPath%\cls\spriterobename_f.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\transparentitem.lub" "%destinationDataPath%\cls\transparentitem.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\transparentitem_f.lub" "%destinationDataPath%\cls\transparentitem_f.lub"* /H /C /I /Y
) else if %type% equ 9 (
    xcopy "%sourceDataPath%\cls\weapontable.lub" "%destinationDataPath%\cls\weapontable.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\weapontable_f.lub" "%destinationDataPath%\cls\weapontable_f.lub"* /H /C /I /Y
) else if %type% equ 10 (
    xcopy "%sourceDataPath%\cls\worldviewdata_f.lub" "%destinationDataPath%\cls\worldviewdata_f.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\worldviewdata_language.lub" "%destinationDataPath%\cls\worldviewdata_language.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\worldviewdata_list.lub" "%destinationDataPath%\cls\worldviewdata_list.lub"* /H /C /I /Y
    xcopy "%sourceDataPath%\cls\worldviewdata_table.lub" "%destinationDataPath%\cls\worldviewdata_table.lub"* /H /C /I /Y
)

if %type% lss 11 (
    
    if %type% equ 1 (
        for /L %%i in (2,1,10) do (
            set cls[%%i]= [ Copied ]
        )
    ) else (
		set cls[%type%]= [ Copied ]
	)

    goto CLSMenu
)
exit