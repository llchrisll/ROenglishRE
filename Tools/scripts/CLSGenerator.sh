#!/bin/bash

echo "================================================================="
echo "Welcome to the Custom Lua Support Generator!"
echo
echo "The Custom Lua Support (or CLS) was created to assist you further"
echo "in adding your custom entries to seperate files, split from the"
echo "original files, so it's easier to update the translation files."
echo
echo "To use it you need to use the Nemo/WARP patches,"
echo "so these files can be read from your GRF."
echo "A guide can be found on the Wiki."
echo
echo "This will help you to copy over the files you want and need based" 
echo "on the choice you make."
echo "It will loop itself until you close the program or choose Exit."
echo "================================================================="
read -p "Press enter to continue..."

# Set paths
sourceDataPath="../Addons/Custom Lua Support/data/luafiles514/lua files"
destinationDataPath="./Client/data/luafiles514/lua files"

# Initialize array for tracking copied files
declare -A cls

while true; do
    clear
    echo "==============="
    echo "[1] All In One Package ${cls[1]}"
    echo "[2] Headgears ${cls[2]}"
    echo "[3] Random Options ${cls[3]}"
    echo "[4] HatEffects ${cls[4]}"
    echo "[5] NPC/Mob and Pets ${cls[5]}"
    echo "[6] Lapine Boxes ${cls[6]}"
    echo "[7] Signboards ${cls[7]}"
    echo "[8] Robes/Costume Garments ${cls[8]}"
    echo "[9] Weapons ${cls[9]}"
    echo "[10] World Map ${cls[10]}"
    echo "[11] Exit"
    echo "==============="
    read -p "Now choose: " type

    if [ "$type" -lt 11 ]; then
        # Remove existing CLS directory if it exists
        [ -d "Client/data/luafiles514/lua files/cls" ] && rm -rf "Client/data/luafiles514/lua files/cls/"
    fi

    case $type in
        1)  # All in One Package
            cp -r "../Addons/Custom Lua Support/"* "./Client/"
            for ((i=2; i<=10; i++)); do
                cls[$i]=" [ Copied ]"
            done
            ;;
        2)  # Headgears
            cp -f "$sourceDataPath/cls/accessoryid.lub" "$destinationDataPath/cls/accessoryid.lub"
            cp -f "$sourceDataPath/cls/accname.lub" "$destinationDataPath/cls/accname.lub"
            cp -f "$sourceDataPath/cls/accname_f.lub" "$destinationDataPath/cls/accname_f.lub"
            cp -f "$sourceDataPath/datainfo/TB_Layer_Priority.lub" "$destinationDataPath/datainfo/TB_Layer_Priority.lub"
            cls[2]=" [ Copied ]"
            ;;
        3)  # Random Options
            cp -f "$sourceDataPath/cls/enumvar.lub" "$destinationDataPath/cls/enumvar.lub"
            cp -f "$sourceDataPath/cls/randomoption.lub" "$destinationDataPath/cls/randomoption.lub"
            cp -f "$sourceDataPath/cls/addrandomoption_f.lub" "$destinationDataPath/cls/addrandomoption_f.lub"
            cls[3]=" [ Copied ]"
            ;;
        4)  # HatEffects
            cp -f "$sourceDataPath/hateffectinfo/hateffectinfo.lub" "$destinationDataPath/hateffectinfo/hateffectinfo.lub"
            cp -f "$sourceDataPath/cls/hateffectinfo.lub" "$destinationDataPath/cls/hateffectinfo.lub"
            cls[4]=" [ Copied ]"
            ;;
        5)  # NPC/Mob and Pets
            cp -f "$sourceDataPath/cls/jobname.lub" "$destinationDataPath/cls/jobname.lub"
            cp -f "$sourceDataPath/cls/jobname_f.lub" "$destinationDataPath/cls/jobname_f.lub"
            cp -f "$sourceDataPath/cls/npcidentity.lub" "$destinationDataPath/cls/npcidentity.lub"
            cp -f "$sourceDataPath/cls/petinfo.lub" "$destinationDataPath/cls/petinfo.lub"
            cls[5]=" [ Copied ]"
            ;;
        6)  # Lapine Boxes
            cp -f "$sourceDataPath/datainfo/lapineddukddakbox.lub" "$destinationDataPath/datainfo/lapineddukddakbox.lub"
            cp -f "$sourceDataPath/datainfo/LapineUpgradeBox.lub" "$destinationDataPath/datainfo/LapineUpgradeBox.lub"
            cp -f "$sourceDataPath/cls/lapineddukddakbox.lub" "$destinationDataPath/cls/lapineddukddakbox.lub"
            cp -f "$sourceDataPath/cls/lapineupgradebox.lub" "$destinationDataPath/cls/lapineupgradebox.lub"
            cls[6]=" [ Copied ]"
            ;;
        7)  # Signboards
            cp -f "$sourceDataPath/cls/signboardlist.lub" "$destinationDataPath/cls/signboardlist.lub"
            cp -f "$sourceDataPath/cls/signboardlist_f.lub" "$destinationDataPath/cls/signboardlist_f.lub"
            cls[7]=" [ Copied ]"
            ;;
        8)  # Robes/Costume Garments
            cp -f "$sourceDataPath/cls/spriterobeid.lub" "$destinationDataPath/cls/spriterobeid.lub"
            cp -f "$sourceDataPath/cls/spriterobename.lub" "$destinationDataPath/cls/spriterobename.lub"
            cp -f "$sourceDataPath/cls/spriterobename_f.lub" "$destinationDataPath/cls/spriterobename_f.lub"
            cp -f "$sourceDataPath/cls/transparentitem.lub" "$destinationDataPath/cls/transparentitem.lub"
            cp -f "$sourceDataPath/cls/transparentitem_f.lub" "$destinationDataPath/cls/transparentitem_f.lub"
            cls[8]=" [ Copied ]"
            ;;
        9)  # Weapons
            cp -f "$sourceDataPath/cls/weapontable.lub" "$destinationDataPath/cls/weapontable.lub"
            cp -f "$sourceDataPath/cls/weapontable_f.lub" "$destinationDataPath/cls/weapontable_f.lub"
            cls[9]=" [ Copied ]"
            ;;
        10) # World Map
            cp -f "$sourceDataPath/cls/worldviewdata_f.lub" "$destinationDataPath/cls/worldviewdata_f.lub"
            cp -f "$sourceDataPath/cls/worldviewdata_language.lub" "$destinationDataPath/cls/worldviewdata_language.lub"
            cp -f "$sourceDataPath/cls/worldviewdata_list.lub" "$destinationDataPath/cls/worldviewdata_list.lub"
            cp -f "$sourceDataPath/cls/worldviewdata_table.lub" "$destinationDataPath/cls/worldviewdata_table.lub"
            cls[10]=" [ Copied ]"
            ;;
        11) exit ;;
    esac
done 