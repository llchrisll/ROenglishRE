#!/bin/bash

echo "================================================================="
echo "Welcome to the Additions Generator!"
echo "This will help you to copy over the files you want and need based on the choice you make."
echo "It will loop itself until you close the program or choose Exit."
echo "================================================================="
echo "Note: This should only be used after you run the ClientGenerator.sh!"
echo "================================================================="
read -p "Press enter to continue..."

# Set paths
sourceDataPath="../Additions/data"
sourceSystemPath="../Additions/SystemEN"
destinationDataPath="./Client/data"
destinationSystemPath="./Client/SystemEN"

# Initialize arrays for tracking copied files
declare -A datac mmaps omaps sys_c lua_c

clear
echo "================================================================="
echo "First, type the Client Date you are using, that way I will only copy the files,"
echo "your client supports!"
echo "================================================================="
echo "Example: 20220406 for 2022-04-06"
echo "================================================================="
read -p "Client Date (YYYYMMDD): " date

if [ -z "$date" ]; then
    echo "You have not defined your client date!"
    exit 1
fi

while true; do
    clear
    echo "================================================================="
    echo "Client Date: $date"
    echo "================================================================="
    echo "[1] Data Folder"
    echo "[2] data\luafiles514"
    echo "[3] System Folder"
    echo "[4] Legacy Maps"
    echo "[5] Legacy Minimaps"
    echo "[6] Exit"
    echo "================================================================="
    read -p "Now choose: " type

    case $type in
        1) # Data Menu
            while true; do
                clear
                echo "================================================================="
                echo "Data Folder"
                echo "================================================================="
                echo "[0] Back to previous Menu"
                echo "[1] All in One Package ${datac[1]}"
                echo "[2] bookitemnametable.txt ${datac[2]}"
                echo "[3] buyingstoreitemlist.txt ${datac[3]}"
                echo "[4] card*.txt ${datac[4]}"
                echo "[5] etcinfo.txt ${datac[5]}"
                echo "[6] exceptionminimapnametable.txt ${datac[6]}"
                echo "[7] fogParameterTable.txt ${datac[7]}"
                echo "[8] indoorrswtable.txt ${datac[8]}"
                echo "[9] itemmoveinfov5.txt ${datac[9]}"
                echo "[10] leveluseskillspamount.txt ${datac[10]}"
                echo "[11] manner.txt ${datac[11]}"
                echo "[12] mapobjlighttable.txt ${datac[12]}"
                echo "[13] mappostable.txt ${datac[13]}"
                echo "[14] metalprocessitemtable.txt ${datac[14]}"
                echo "[15] mp3nametable.txt ${datac[15]}"
                echo "[16] resnametable.txt ${datac[16]}"
                echo "[17] viewpointtable.txt ${datac[17]}"
                echo "================================================================="
                read -p "Now choose: " data

                case $data in
                    0) break ;;
                    1) # Copy all data files
                        cp -f "$sourceDataPath/bookitemnametable.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/buyingstoreitemlist.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/carditemnametable.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/cardpostfixnametable.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/etcinfo.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/exceptionminimapnametable.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/fogParameterTable.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/indoorrswtable.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/itemmoveinfov5.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/leveluseskillspamount.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/manner.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/mapobjlighttable.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/mappostable.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/metalprocessitemtable.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/mp3nametable.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/num2cardillustnametable.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/resnametable.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/viewpointtable.txt" "$destinationDataPath/"
                        for ((i=1; i<=17; i++)); do
                            datac[$i]="[ Copied ]"
                        done
                        ;;
                    2) cp -f "$sourceDataPath/bookitemnametable.txt" "$destinationDataPath/" && datac[2]="[ Copied ]" ;;
                    3) cp -f "$sourceDataPath/buyingstoreitemlist.txt" "$destinationDataPath/" && datac[3]="[ Copied ]" ;;
                    4) 
                        cp -f "$sourceDataPath/carditemnametable.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/cardpostfixnametable.txt" "$destinationDataPath/"
                        cp -f "$sourceDataPath/num2cardillustnametable.txt" "$destinationDataPath/"
                        datac[4]="[ Copied ]"
                        ;;
                    5) cp -f "$sourceDataPath/etcinfo.txt" "$destinationDataPath/" && datac[5]="[ Copied ]" ;;
                    6) cp -f "$sourceDataPath/exceptionminimapnametable.txt" "$destinationDataPath/" && datac[6]="[ Copied ]" ;;
                    7) cp -f "$sourceDataPath/fogParameterTable.txt" "$destinationDataPath/" && datac[7]="[ Copied ]" ;;
                    8) cp -f "$sourceDataPath/indoorrswtable.txt" "$destinationDataPath/" && datac[8]="[ Copied ]" ;;
                    9) cp -f "$sourceDataPath/itemmoveinfov5.txt" "$destinationDataPath/" && datac[9]="[ Copied ]" ;;
                    10) cp -f "$sourceDataPath/leveluseskillspamount.txt" "$destinationDataPath/" && datac[10]="[ Copied ]" ;;
                    11) cp -f "$sourceDataPath/manner.txt" "$destinationDataPath/" && datac[11]="[ Copied ]" ;;
                    12) cp -f "$sourceDataPath/mapobjlighttable.txt" "$destinationDataPath/" && datac[12]="[ Copied ]" ;;
                    13) cp -f "$sourceDataPath/mappostable.txt" "$destinationDataPath/" && datac[13]="[ Copied ]" ;;
                    14) cp -f "$sourceDataPath/metalprocessitemtable.txt" "$destinationDataPath/" && datac[14]="[ Copied ]" ;;
                    15) cp -f "$sourceDataPath/mp3nametable.txt" "$destinationDataPath/" && datac[15]="[ Copied ]" ;;
                    16) cp -f "$sourceDataPath/resnametable.txt" "$destinationDataPath/" && datac[16]="[ Copied ]" ;;
                    17) cp -f "$sourceDataPath/viewpointtable.txt" "$destinationDataPath/" && datac[17]="[ Copied ]" ;;
                esac
            done
            ;;
        2) # Lua Files Menu
            while true; do
                clear
                echo "================================================================="
                echo "data\luafiles514"
                echo "================================================================="
                echo "[0] Back to previous Menu"
                echo "[1] All in One Package ${lua_c[1]}"
                echo "[2] Headgears ${lua_c[2]}"
                echo "[3] changedirectorylist.lub ${lua_c[3]}"
                echo "[4] DrawItemOnAura.lub ${lua_c[4]}"
                echo "[5] enumvar.lub ${lua_c[5]}"
                echo "[6] exceptionitemproducer.lub ${lua_c[6]}"
                echo "[7] NPC/Mob and Pets ${lua_c[7]}"
                echo "[8] kaframovemapservicelist.lub ${lua_c[8]}"
                echo "[9] npclocationradius.lub ${lua_c[9]}"
                echo "[10] shadowtable.lub ${lua_c[10]}"
                echo "[11] Robes/Costume Garments ${lua_c[11]}"
                echo "[12] tb_cashshop_banner.lub ${lua_c[12]}"
                echo "[13] tb_checkattendance_banner.lub ${lua_c[13]}"
                echo "[14] Weapons ${lua_c[14]}"
                echo "[15] World Map ${lua_c[15]}"
                echo "[16] effecttool\forcerendereffect.lub ${lua_c[16]}"
                echo "[17] Hateffectinfo (2024-04-17 and newer) ${lua_c[17]}"
                echo "[18] skilleffectinfo ${lua_c[18]}"
                echo "[19] skillinfoz ${lua_c[19]}"
                echo "[20] stateicon ${lua_c[20]}"
                echo "[21] stylingshop ${lua_c[21]}"
                echo "[22] ItemDBNameTbl (2021-10-28 and newer) ${lua_c[22]}"
                echo "================================================================="
                read -p "Now choose: " lua

                case $lua in
                    0) break ;;
                    1) # Copy all lua files
                        cp -rf "$sourceDataPath/luafiles514/"* "$destinationDataPath/luafiles514/"
                        if [ "$date" -lt 20240417 ]; then
                            # Remove new hateffectinfo files if Client is older than 2024-04-17
                            rm -rf "$destinationDataPath/luafiles514/lua files/hateffectinfo"
                            # Copy default files over again from Translation folder
                            cp -rf "../Translation/Renewal/data/luafiles514/lua files/hateffectinfo/" "$destinationDataPath/luafiles514/lua files/hateffectinfo/"
                        fi
                        if [ "$date" -lt 20211028 ]; then
                            rm -f "$destinationDataPath/luafiles514/lua files/ItemDBNameTbl.lub"
                        fi
                        for ((i=1; i<=22; i++)); do
                            lua_c[$i]="[ Copied ]"
                            if [ $i -eq 17 ] && [ "$date" -lt 20240417 ]; then
                                lua_c[$i]=""
                            fi
                            if [ $i -eq 22 ] && [ "$date" -lt 20211028 ]; then
                                lua_c[$i]=""
                            fi
                        done
                        ;;
                    2) # Headgears
                        cp -f "$sourceDataPath/luafiles514/lua files/datainfo/accessoryid.lub" "$destinationDataPath/luafiles514/lua files/datainfo/"
                        cp -f "$sourceDataPath/luafiles514/lua files/datainfo/accname.lub" "$destinationDataPath/luafiles514/lua files/datainfo/"
                        cp -f "$sourceDataPath/luafiles514/lua files/datainfo/accname_eng.lub" "$destinationDataPath/luafiles514/lua files/datainfo/"
                        cp -f "$sourceDataPath/luafiles514/lua files/datainfo/tb_layer_priority.lub" "$destinationDataPath/luafiles514/lua files/datainfo/"
                        lua_c[2]="[ Copied ]"
                        ;;
                    3) cp -f "$sourceDataPath/luafiles514/lua files/datainfo/changedirectorylist.lub" "$destinationDataPath/luafiles514/lua files/datainfo/" && lua_c[3]="[ Copied ]" ;;
                    4) cp -f "$sourceDataPath/luafiles514/lua files/datainfo/DrawItemOnAura.lub" "$destinationDataPath/luafiles514/lua files/datainfo/" && lua_c[4]="[ Copied ]" ;;
                    5) cp -f "$sourceDataPath/luafiles514/lua files/datainfo/enumvar.lub" "$destinationDataPath/luafiles514/lua files/datainfo/" && lua_c[5]="[ Copied ]" ;;
                    6) cp -f "$sourceDataPath/luafiles514/lua files/datainfo/exceptionitemproducer.lub" "$destinationDataPath/luafiles514/lua files/datainfo/" && lua_c[6]="[ Copied ]" ;;
                    7) # NPC/Mob and Pets
                        cp -f "$sourceDataPath/luafiles514/lua files/datainfo/jobidentity.lub" "$destinationDataPath/luafiles514/lua files/datainfo/"
                        cp -f "$sourceDataPath/luafiles514/lua files/datainfo/jobname.lub" "$destinationDataPath/luafiles514/lua files/datainfo/"
                        cp -f "$sourceDataPath/luafiles514/lua files/datainfo/npcidentity.lub" "$destinationDataPath/luafiles514/lua files/datainfo/"
                        lua_c[7]="[ Copied ]"
                        ;;
                    8) cp -f "$sourceDataPath/luafiles514/lua files/datainfo/kaframovemapservicelist.lub" "$destinationDataPath/luafiles514/lua files/datainfo/" && lua_c[8]="[ Copied ]" ;;
                    9) cp -f "$sourceDataPath/luafiles514/lua files/datainfo/npclocationradius.lub" "$destinationDataPath/luafiles514/lua files/datainfo/" && lua_c[9]="[ Copied ]" ;;
                    10) cp -f "$sourceDataPath/luafiles514/lua files/datainfo/shadowtable.lub" "$destinationDataPath/luafiles514/lua files/datainfo/" && lua_c[10]="[ Copied ]" ;;
                    11) # Robes/Costume Garments
                        cp -f "$sourceDataPath/luafiles514/lua files/datainfo/spriterobeid.lub" "$destinationDataPath/luafiles514/lua files/datainfo/"
                        cp -f "$sourceDataPath/luafiles514/lua files/datainfo/spriterobename.lub" "$destinationDataPath/luafiles514/lua files/datainfo/"
                        cp -f "$sourceDataPath/luafiles514/lua files/transparentItem/transparentItem.lub" "$destinationDataPath/luafiles514/lua files/transparentItem/"
                        lua_c[11]="[ Copied ]"
                        ;;
                    12) cp -f "$sourceDataPath/luafiles514/lua files/datainfo/tb_cashshop_banner.lub" "$destinationDataPath/luafiles514/lua files/datainfo/" && lua_c[12]="[ Copied ]" ;;
                    13) cp -f "$sourceDataPath/luafiles514/lua files/datainfo/tb_checkattendance_banner.lub" "$destinationDataPath/luafiles514/lua files/datainfo/" && lua_c[13]="[ Copied ]" ;;
                    14) cp -f "$sourceDataPath/luafiles514/lua files/datainfo/weapontable.lub" "$destinationDataPath/luafiles514/lua files/datainfo/" && lua_c[14]="[ Copied ]" ;;
                    15) # World Map
                        cp -f "$sourceDataPath/luafiles514/lua files/worldviewdata/worldviewdata_info.lub" "$destinationDataPath/luafiles514/lua files/worldviewdata/"
                        cp -f "$sourceDataPath/luafiles514/lua files/worldviewdata/worldviewdata_table.lub" "$destinationDataPath/luafiles514/lua files/worldviewdata/"
                        lua_c[15]="[ Copied ]"
                        ;;
                    16) cp -f "$sourceDataPath/luafiles514/lua files/effecttool/forcerendereffect.lub" "$destinationDataPath/luafiles514/lua files/effecttool/" && lua_c[16]="[ Copied ]" ;;
                    17) # Hateffectinfo (2024-04-17 and newer)
                        if [ "$date" -ge 20240417 ]; then
                            cp -f "$sourceDataPath/luafiles514/lua files/hateffectinfo/hateffectinfo.lub" "$destinationDataPath/luafiles514/lua files/hateffectinfo/"
                            lua_c[17]="[ Copied ]"
                        else
                            echo "These files for hateffects are only supported by 2024-04-17 clients or newer!"
                            read -p "Press Enter to continue..."
                        fi
                        ;;
                    18) # skilleffectinfo
                        cp -f "$sourceDataPath/luafiles514/lua files/skilleffectinfo/actorstate.lub" "$destinationDataPath/luafiles514/lua files/skilleffectinfo/"
                        cp -f "$sourceDataPath/luafiles514/lua files/skilleffectinfo/effectid.lub" "$destinationDataPath/luafiles514/lua files/skilleffectinfo/"
                        cp -f "$sourceDataPath/luafiles514/lua files/skilleffectinfo/skilleffectinfolist.lub" "$destinationDataPath/luafiles514/lua files/skilleffectinfo/"
                        lua_c[18]="[ Copied ]"
                        ;;
                    19) # skillinfoz
                        cp -f "$sourceDataPath/luafiles514/lua files/skillinfoz/jobinheritlist.lub" "$destinationDataPath/luafiles514/lua files/skillinfoz/"
                        cp -f "$sourceDataPath/luafiles514/lua files/skillinfoz/skillid.lub" "$destinationDataPath/luafiles514/lua files/skillinfoz/"
                        cp -f "$sourceDataPath/luafiles514/lua files/skillinfoz/skilltreeview.lub" "$destinationDataPath/luafiles514/lua files/skillinfoz/"
                        lua_c[19]="[ Copied ]"
                        ;;
                    20) # stateicon
                        cp -f "$sourceDataPath/luafiles514/lua files/stateicon/efstids.lub" "$destinationDataPath/luafiles514/lua files/stateicon/"
                        cp -f "$sourceDataPath/luafiles514/lua files/stateicon/stateiconimginfo.lub" "$destinationDataPath/luafiles514/lua files/stateicon/"
                        cp -f "$sourceDataPath/luafiles514/lua files/stateicon/stateiconinfo.lub" "$destinationDataPath/luafiles514/lua files/stateicon/"
                        cp -f "$sourceDataPath/luafiles514/lua files/stateicon/stateiconinfo_f.lub" "$destinationDataPath/luafiles514/lua files/stateicon/"
                        lua_c[20]="[ Copied ]"
                        ;;
                    21) cp -f "$sourceDataPath/luafiles514/lua files/stylingshop/stylingshopinfo.lub" "$destinationDataPath/luafiles514/lua files/stylingshop/" && lua_c[21]="[ Copied ]" ;;
                    22) # ItemDBNameTbl (2021-10-28 and newer)
                        if [ "$date" -ge 20211028 ]; then
                            cp -f "$sourceDataPath/luafiles514/lua files/ItemDBNameTbl.lub" "$destinationDataPath/luafiles514/lua files/"
                            lua_c[22]="[ Copied ]"
                        else
                            echo "This file is only supported by 2021-10-28 clients or newer!"
                            read -p "Press Enter to continue..."
                        fi
                        ;;
                esac
            done
            ;;
        3) # System Menu
            while true; do
                clear
                echo "================================================================="
                echo "System Folder"
                echo "================================================================="
                echo "[0] Back to previous Menu"
                echo "[1] All in One Package ${sys_c[1]}"
                echo "[2] ChangeMaterial.lub (2022-12-07 and newer) ${sys_c[2]}"
                echo "[3] CheckAttendance.lub ${sys_c[3]}"
                echo "[4] monster_size_effect.lub ${sys_c[4]}"
                echo "[5] PetEvolution.lub ${sys_c[5]}"
                echo "[6] PrivateAirplane.lub ${sys_c[6]}"
                echo "[7] Signboard_C.lub ${sys_c[7]}"
                echo "[8] OngoingQuests/RecommendedQuests_C.lub ${sys_c[8]}"
                echo "[9] Rune Folder (2023-08-02 and newer) ${sys_c[9]}"
                echo "================================================================="
                read -p "Now choose: " sys

                case $sys in
                    0) break ;;
                    1) # Copy all system files
                        if [ "$date" -ge 20221207 ]; then
                            cp -f "$sourceSystemPath/ChangeMaterial.lub" "$destinationSystemPath/"
                        fi
                        cp -f "$sourceSystemPath/CheckAttendance.lub" "$destinationSystemPath/"
                        cp -f "$sourceSystemPath/PetEvolution.lub" "$destinationSystemPath/"
                        cp -f "$sourceSystemPath/PrivateAirplane.lub" "$destinationSystemPath/"
                        cp -f "$sourceSystemPath/Signboard_C.lub" "$destinationSystemPath/"
                        cp -f "$sourceSystemPath/OngoingQuests_C.lub" "$destinationSystemPath/"
                        cp -f "$sourceSystemPath/RecommendedQuests_C.lub" "$destinationSystemPath/"
                        cp -f "$sourceDataPath/luafiles514/lua files/datainfo/questinfo_f.lub" "$destinationDataPath/luafiles514/lua files/datainfo/"
                        if [ "$date" -le 20170614 ]; then
                            cp -f "$sourceSystemPath/monster_size_effect 20170614.lub" "$destinationSystemPath/monster_size_effect.lub"
                        else
                            cp -f "$sourceSystemPath/monster_size_effect.lub" "$destinationSystemPath/"
                        fi
                        if [ "$date" -ge 20230802 ]; then
                            cp -rf "$sourceSystemPath/Rune/" "$destinationSystemPath/Rune/"
                        fi
                        for ((i=1; i<=9; i++)); do
                            sys_c[$i]="[ Copied ]"
                            if [ $i -eq 2 ] && [ "$date" -lt 20221207 ]; then
                                sys_c[$i]=""
                            fi
                            if [ $i -eq 9 ] && [ "$date" -lt 20230802 ]; then
                                sys_c[$i]=""
                            fi
                        done
                        ;;
                    2) # ChangeMaterial.lub (2022-12-07 and newer)
                        if [ "$date" -ge 20221207 ]; then
                            cp -f "$sourceSystemPath/ChangeMaterial.lub" "$destinationSystemPath/"
                            sys_c[2]="[ Copied ]"
                        else
                            echo "This file is only supported by 2022-12-07 clients or newer!"
                            read -p "Press Enter to continue..."
                        fi
                        ;;
                    3) cp -f "$sourceSystemPath/CheckAttendance.lub" "$destinationSystemPath/" && sys_c[3]="[ Copied ]" ;;
                    4) # monster_size_effect.lub
                        if [ "$date" -le 20170614 ]; then
                            cp -f "$sourceSystemPath/monster_size_effect 20170614.lub" "$destinationSystemPath/monster_size_effect.lub"
                        else
                            cp -f "$sourceSystemPath/monster_size_effect.lub" "$destinationSystemPath/"
                        fi
                        sys_c[4]="[ Copied ]"
                        ;;
                    5) cp -f "$sourceSystemPath/PetEvolution.lub" "$destinationSystemPath/" && sys_c[5]="[ Copied ]" ;;
                    6) cp -f "$sourceSystemPath/PrivateAirplane.lub" "$destinationSystemPath/" && sys_c[6]="[ Copied ]" ;;
                    7) cp -f "$sourceSystemPath/Signboard_C.lub" "$destinationSystemPath/" && sys_c[7]="[ Copied ]" ;;
                    8) # OngoingQuests/RecommendedQuests_C.lub
                        cp -f "$sourceSystemPath/OngoingQuests_C.lub" "$destinationSystemPath/"
                        cp -f "$sourceSystemPath/RecommendedQuests_C.lub" "$destinationSystemPath/"
                        cp -f "$sourceDataPath/luafiles514/lua files/datainfo/questinfo_f.lub" "$destinationDataPath/luafiles514/lua files/datainfo/"
                        sys_c[8]="[ Copied ]"
                        ;;
                    9) # Rune Folder (2023-08-02 and newer)
                        if [ "$date" -ge 20230802 ]; then
                            cp -rf "$sourceSystemPath/Rune/" "$destinationSystemPath/Rune/"
                            sys_c[9]="[ Copied ]"
                        else
                            echo "These files is only supported by 2023-08-02 clients or newer!"
                            read -p "Press Enter to continue..."
                        fi
                        ;;
                esac
            done
            ;;
        4) # Legacy Maps Menu
            while true; do
                clear
                echo "================================================================="
                echo "Legacy Maps"
                echo "================================================================="
                echo "[0] Back to previous Menu"
                echo "[1] All in One Package ${omaps[1]}"
                echo "[2] Airport Maps (Einbroch, Lighthalzen, Yuno) ${omaps[2]}"
                echo "[3] gefenia01.rsw ${omaps[3]}"
                echo "[4] tur_d03_i.rsw ${omaps[4]}"
                echo "[5] aldeg_cas01.rsw ${omaps[5]}"
                echo "[6] gef_fild02.rsw ${omaps[6]}"
                echo "[7] gl_cas01.rsw ${omaps[7]}"
                echo "[8] mjolnir_07.rsw ${omaps[8]}"
                echo "[9] mjolnir_08.rsw ${omaps[9]}"
                echo "[10] mjolnir_09.rsw ${omaps[10]}"
                echo "[11] mjolnir_10.rsw ${omaps[11]}"
                echo "[12] mjolnir_11.rsw ${omaps[12]}"
                echo "[13] moc_fild01.rsw ${omaps[13]}"
                echo "[14] paramk.rsw ${omaps[14]}"
                echo "[15] pay_fild04.rsw ${omaps[15]}"
                echo "[16] prt_fild00.rsw ${omaps[16]}"
                echo "[17] prt_fild01.rsw ${omaps[17]}"
                echo "[18] prt_fild02.rsw ${omaps[18]}"
                echo "[19] prt_fild03.rsw ${omaps[19]}"
                echo "[20] prt_fild04.rsw ${omaps[20]}"
                echo "[21] prt_fild05.rsw ${omaps[21]}"
                echo "[22] prt_fild06.rsw ${omaps[22]}"
                echo "[23] prt_fild07.rsw ${omaps[23]}"
                echo "[24] prt_fild09.rsw ${omaps[24]}"
                echo "[25] prt_fild10.rsw ${omaps[25]}"
                echo "[26] 2009rwc_ Maps ${omaps[26]}"
                echo "[27] 2012rwc_ Maps ${omaps[27]}"
                echo "[28] poring_c01 ${omaps[28]}"
                echo "[29] poring_c02 ${omaps[29]}"
                echo "[30] sch_lab ${omaps[30]}"
                echo "[31] airplane ${omaps[31]}"
                echo "[32] payon ${omaps[32]}"
                echo "[33] ra_temple ${omaps[33]}"
                echo "[34] spl_fild01 ${omaps[34]}"
                echo "[35] aldebaran ${omaps[35]}"
                echo "================================================================="
                read -p "Choose which maps you want to copy: " map

                case $map in
                    0) break ;;
                    1) # Copy all maps
                        cp -f "$sourceDataPath/einbroch.gat" "$destinationDataPath/"
                        cp -f "$sourceDataPath/einbroch.gnd" "$destinationDataPath/"
                        cp -f "$sourceDataPath/einbroch.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/lighthalzen.gat" "$destinationDataPath/"
                        cp -f "$sourceDataPath/lighthalzen.gnd" "$destinationDataPath/"
                        cp -f "$sourceDataPath/lighthalzen.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/yuno.gat" "$destinationDataPath/"
                        cp -f "$sourceDataPath/yuno.gnd" "$destinationDataPath/"
                        cp -f "$sourceDataPath/yuno.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/gefenia01.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/tur_d03_i.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/aldeg_cas01.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/gef_fild02.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/gl_cas01.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/mjolnir_07.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/mjolnir_08.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/mjolnir_09.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/mjolnir_10.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/mjolnir_11.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/moc_fild01.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/paramk.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/pay_fild04.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/prt_fild00.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/prt_fild01.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/prt_fild02.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/prt_fild03.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/prt_fild04.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/prt_fild05.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/prt_fild06.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/prt_fild07.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/prt_fild09.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/prt_fild10.rsw" "$destinationDataPath/"
                        # Copy 2009 RWC maps
                        for i in {01..08} f01; do
                            cp -f "$sourceDataPath/2009rwc_$i.gat" "$destinationDataPath/"
                            cp -f "$sourceDataPath/2009rwc_$i.gnd" "$destinationDataPath/"
                            cp -f "$sourceDataPath/2009rwc_$i.rsw" "$destinationDataPath/"
                            cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/2009rwc_$i.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/"
                        done
                        # Copy 2012 RWC maps
                        for i in {01..08}; do
                            cp -f "$sourceDataPath/2012rwc_$i.gat" "$destinationDataPath/"
                            cp -f "$sourceDataPath/2012rwc_$i.gnd" "$destinationDataPath/"
                            cp -f "$sourceDataPath/2012rwc_$i.rsw" "$destinationDataPath/"
                        done
                        # Copy other maps
                        for map in poring_c01 poring_c02 sch_lab payon ra_temple; do
                            cp -f "$sourceDataPath/$map.gat" "$destinationDataPath/"
                            cp -f "$sourceDataPath/$map.gnd" "$destinationDataPath/"
                            cp -f "$sourceDataPath/$map.rsw" "$destinationDataPath/"
                            if [ -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/$map.bmp" ]; then
                                cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/$map.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/"
                            fi
                        done
                        cp -f "$sourceDataPath/airplane.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/spl_fild01.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/aldebaran.rsw" "$destinationDataPath/"
                        for ((i=1; i<=35; i++)); do
                            omaps[$i]="[ Copied ]"
                        done
                        ;;
                    2) # Airport Maps
                        cp -f "$sourceDataPath/einbroch.gat" "$destinationDataPath/"
                        cp -f "$sourceDataPath/einbroch.gnd" "$destinationDataPath/"
                        cp -f "$sourceDataPath/einbroch.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/lighthalzen.gat" "$destinationDataPath/"
                        cp -f "$sourceDataPath/lighthalzen.gnd" "$destinationDataPath/"
                        cp -f "$sourceDataPath/lighthalzen.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/yuno.gat" "$destinationDataPath/"
                        cp -f "$sourceDataPath/yuno.gnd" "$destinationDataPath/"
                        cp -f "$sourceDataPath/yuno.rsw" "$destinationDataPath/"
                        omaps[2]="[ Copied ]"
                        ;;
                    3) cp -f "$sourceDataPath/gefenia01.rsw" "$destinationDataPath/" && omaps[3]="[ Copied ]" ;;
                    4) cp -f "$sourceDataPath/tur_d03_i.rsw" "$destinationDataPath/" && omaps[4]="[ Copied ]" ;;
                    5) cp -f "$sourceDataPath/aldeg_cas01.rsw" "$destinationDataPath/" && omaps[5]="[ Copied ]" ;;
                    6) cp -f "$sourceDataPath/gef_fild02.rsw" "$destinationDataPath/" && omaps[6]="[ Copied ]" ;;
                    7) cp -f "$sourceDataPath/gl_cas01.rsw" "$destinationDataPath/" && omaps[7]="[ Copied ]" ;;
                    8) cp -f "$sourceDataPath/mjolnir_07.rsw" "$destinationDataPath/" && omaps[8]="[ Copied ]" ;;
                    9) cp -f "$sourceDataPath/mjolnir_08.rsw" "$destinationDataPath/" && omaps[9]="[ Copied ]" ;;
                    10) cp -f "$sourceDataPath/mjolnir_09.rsw" "$destinationDataPath/" && omaps[10]="[ Copied ]" ;;
                    11) cp -f "$sourceDataPath/mjolnir_10.rsw" "$destinationDataPath/" && omaps[11]="[ Copied ]" ;;
                    12) cp -f "$sourceDataPath/mjolnir_11.rsw" "$destinationDataPath/" && omaps[12]="[ Copied ]" ;;
                    13) cp -f "$sourceDataPath/moc_fild01.rsw" "$destinationDataPath/" && omaps[13]="[ Copied ]" ;;
                    14) cp -f "$sourceDataPath/paramk.rsw" "$destinationDataPath/" && omaps[14]="[ Copied ]" ;;
                    15) cp -f "$sourceDataPath/pay_fild04.rsw" "$destinationDataPath/" && omaps[15]="[ Copied ]" ;;
                    16) cp -f "$sourceDataPath/prt_fild00.rsw" "$destinationDataPath/" && omaps[16]="[ Copied ]" ;;
                    17) cp -f "$sourceDataPath/prt_fild01.rsw" "$destinationDataPath/" && omaps[17]="[ Copied ]" ;;
                    18) cp -f "$sourceDataPath/prt_fild02.rsw" "$destinationDataPath/" && omaps[18]="[ Copied ]" ;;
                    19) cp -f "$sourceDataPath/prt_fild03.rsw" "$destinationDataPath/" && omaps[19]="[ Copied ]" ;;
                    20) cp -f "$sourceDataPath/prt_fild04.rsw" "$destinationDataPath/" && omaps[20]="[ Copied ]" ;;
                    21) cp -f "$sourceDataPath/prt_fild05.rsw" "$destinationDataPath/" && omaps[21]="[ Copied ]" ;;
                    22) cp -f "$sourceDataPath/prt_fild06.rsw" "$destinationDataPath/" && omaps[22]="[ Copied ]" ;;
                    23) cp -f "$sourceDataPath/prt_fild07.rsw" "$destinationDataPath/" && omaps[23]="[ Copied ]" ;;
                    24) cp -f "$sourceDataPath/prt_fild09.rsw" "$destinationDataPath/" && omaps[24]="[ Copied ]" ;;
                    25) cp -f "$sourceDataPath/prt_fild10.rsw" "$destinationDataPath/" && omaps[25]="[ Copied ]" ;;
                    26) # 2009 RWC Maps
                        for i in {01..08} f01; do
                            cp -f "$sourceDataPath/2009rwc_$i.gat" "$destinationDataPath/"
                            cp -f "$sourceDataPath/2009rwc_$i.gnd" "$destinationDataPath/"
                            cp -f "$sourceDataPath/2009rwc_$i.rsw" "$destinationDataPath/"
                            cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/2009rwc_$i.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/"
                        done
                        omaps[26]="[ Copied ]"
                        ;;
                    27) # 2012 RWC Maps
                        for i in {01..08}; do
                            cp -f "$sourceDataPath/2012rwc_$i.gat" "$destinationDataPath/"
                            cp -f "$sourceDataPath/2012rwc_$i.gnd" "$destinationDataPath/"
                            cp -f "$sourceDataPath/2012rwc_$i.rsw" "$destinationDataPath/"
                        done
                        omaps[27]="[ Copied ]"
                        ;;
                    28) # poring_c01
                        cp -f "$sourceDataPath/poring_c01.gat" "$destinationDataPath/"
                        cp -f "$sourceDataPath/poring_c01.gnd" "$destinationDataPath/"
                        cp -f "$sourceDataPath/poring_c01.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/poring_c01.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/"
                        omaps[28]="[ Copied ]"
                        ;;
                    29) # poring_c02
                        cp -f "$sourceDataPath/poring_c02.gat" "$destinationDataPath/"
                        cp -f "$sourceDataPath/poring_c02.gnd" "$destinationDataPath/"
                        cp -f "$sourceDataPath/poring_c02.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/poring_c02.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/"
                        omaps[29]="[ Copied ]"
                        ;;
                    30) # sch_lab
                        cp -f "$sourceDataPath/sch_lab.gat" "$destinationDataPath/"
                        cp -f "$sourceDataPath/sch_lab.gnd" "$destinationDataPath/"
                        cp -f "$sourceDataPath/sch_lab.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/sch_lab.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/"
                        omaps[30]="[ Copied ]"
                        ;;
                    31) cp -f "$sourceDataPath/airplane.rsw" "$destinationDataPath/" && omaps[31]="[ Copied ]" ;;
                    32) # payon
                        cp -f "$sourceDataPath/payon.gat" "$destinationDataPath/"
                        cp -f "$sourceDataPath/payon.gnd" "$destinationDataPath/"
                        cp -f "$sourceDataPath/payon.rsw" "$destinationDataPath/"
                        cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/payon.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/"
                        omaps[32]="[ Copied ]"
                        ;;
                    33) # ra_temple
                        cp -f "$sourceDataPath/ra_temple.gat" "$destinationDataPath/"
                        cp -f "$sourceDataPath/ra_temple.gnd" "$destinationDataPath/"
                        cp -f "$sourceDataPath/ra_temple.rsw" "$destinationDataPath/"
                        omaps[33]="[ Copied ]"
                        ;;
                    34) cp -f "$sourceDataPath/spl_fild01.rsw" "$destinationDataPath/" && omaps[34]="[ Copied ]" ;;
                    35) cp -f "$sourceDataPath/aldebaran.rsw" "$destinationDataPath/" && omaps[35]="[ Copied ]" ;;
                esac
            done
            ;;
        5) # Legacy Minimaps Menu
            while true; do
                clear
                echo "================================================================="
                echo "Legacy Minimaps"
                echo "================================================================="
                echo "[0] Back to previous Menu"
                echo "[1] All in One Package ${mmaps[1]}"
                echo "[2] ama_dun01 ${mmaps[2]}"
                echo "[3] ayo_dun01 ${mmaps[3]}"
                echo "[4] ice_dun04 ${mmaps[4]}"
                echo "[5] map2_int ${mmaps[5]}"
                echo "[6] new_zone02 ${mmaps[6]}"
                echo "[7] new_zone04 ${mmaps[7]}"
                echo "[8] ra_temsky ${mmaps[8]}"
                echo "[9] tha_t07 ${mmaps[9]}"
                echo "[10] tha_t08 ${mmaps[10]}"
                echo "[11] thana_boss ${mmaps[11]}"
                echo "[12] tur_dun05 ${mmaps[12]}"
                echo "[13] tur_dun06 ${mmaps[13]}"
                echo "[14] yggdrasil01 ${mmaps[14]}"
                echo "[15] yuno_in02 ${mmaps[15]}"
                echo "================================================================="
                read -p "Choose which minimaps you want to copy: " bmap

                case $bmap in
                    0) break ;;
                    1) # Copy all minimaps
                        cp -rf "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/"* "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/"
                        for ((i=1; i<=15; i++)); do
                            mmaps[$i]="[ Copied ]"
                        done
                        ;;
                    2) cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/ama_dun01.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/" && mmaps[2]="[ Copied ]" ;;
                    3) cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/ayo_dun01.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/" && mmaps[3]="[ Copied ]" ;;
                    4) cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/ice_dun04.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/" && mmaps[4]="[ Copied ]" ;;
                    5) cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/map2_int.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/" && mmaps[5]="[ Copied ]" ;;
                    6) cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/new_zone02.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/" && mmaps[6]="[ Copied ]" ;;
                    7) cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/new_zone04.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/" && mmaps[7]="[ Copied ]" ;;
                    8) cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/ra_temsky.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/" && mmaps[8]="[ Copied ]" ;;
                    9) cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/tha_t07.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/" && mmaps[9]="[ Copied ]" ;;
                    10) cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/tha_t08.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/" && mmaps[10]="[ Copied ]" ;;
                    11) cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/thana_boss.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/" && mmaps[11]="[ Copied ]" ;;
                    12) cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/tur_dun05.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/" && mmaps[12]="[ Copied ]" ;;
                    13) cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/tur_dun06.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/" && mmaps[13]="[ Copied ]" ;;
                    14) cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/yggdrasil01.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/" && mmaps[14]="[ Copied ]" ;;
                    15) cp -f "$sourceDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/yuno_in02.bmp" "$destinationDataPath/texture/À¯ÀúÀÎÅÍÆäÀÌ½º/map/" && mmaps[15]="[ Copied ]" ;;
                esac
            done
            ;;
        6) exit ;;
    esac
done 