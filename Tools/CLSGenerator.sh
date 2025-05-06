#!/bin/bash

# Source the helper functions
source "$(dirname "$0")/Helper.sh"

# Global variable definitions
sourceDataPath="../Addons/Custom Lua Support/data/luafiles514/lua files"
destinationDataPath="./Client/data/luafiles514/lua files"

declare -a cls # Array to hold "[ Copied ]" status

# Main CLSMenu loop
CLSMenu() {
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
        read -p "Now choose: " type_choice

        if ! [[ "$type_choice" =~ ^[0-9]+$ ]]; then
            echo "Invalid input. Please enter a number."
            pause_script
            continue
        fi

        # Exit choice doesn't involve file operations
        if [ "$type_choice" -eq 11 ]; then
             echo "Exiting Custom Lua Support Generator."
             exit 0
        fi

        # Remove existing cls directory if it exists, ignore errors
        local cls_target_dir="./Client/data/luafiles514/lua files/cls"
        if [ -d "$cls_target_dir" ]; then
            echo "Removing existing directory: $cls_target_dir"
            rm -rf "$cls_target_dir" 
        fi
        
        local choice_successful=false # Flag to indicate a valid choice was processed
        local copy_status=0 # 0 for success, 1 for failure
        local item_failed=false # Track failure within multi-file choices

        case "$type_choice" in
            1) # All In One Package
                echo "Copying All In One Package..."
                # Replicating the broad copy from original batch
                copy_dir_recursive "../Addons/Custom Lua Support/." "./Client/"; copy_status=$?
                choice_successful=true
                ;;
            2) # Headgears
                item_failed=false
                copy_file "$sourceDataPath/cls/accessoryid.lub" "$destinationDataPath/cls/accessoryid.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/accname.lub" "$destinationDataPath/cls/accname.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/accname_f.lub" "$destinationDataPath/cls/accname_f.lub" || item_failed=true
                copy_file "$sourceDataPath/datainfo/TB_Layer_Priority.lub" "$destinationDataPath/datainfo/TB_Layer_Priority.lub" || item_failed=true
                copy_status=$([[ "$item_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            3) # Random Options
                item_failed=false
                copy_file "$sourceDataPath/cls/enumvar.lub" "$destinationDataPath/cls/enumvar.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/randomoption.lub" "$destinationDataPath/cls/randomoption.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/addrandomoption_f.lub" "$destinationDataPath/cls/addrandomoption_f.lub" || item_failed=true
                copy_status=$([[ "$item_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            4) # HatEffects
                item_failed=false
                copy_file "$sourceDataPath/hateffectinfo/hateffectinfo.lub" "$destinationDataPath/hateffectinfo/hateffectinfo.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/hateffectinfo.lub" "$destinationDataPath/cls/hateffectinfo.lub" || item_failed=true
                copy_status=$([[ "$item_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            5) # NPC/Mob and Pets
                item_failed=false
                copy_file "$sourceDataPath/cls/jobname.lub" "$destinationDataPath/cls/jobname.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/jobname_f.lub" "$destinationDataPath/cls/jobname_f.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/npcidentity.lub" "$destinationDataPath/cls/npcidentity.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/petinfo.lub" "$destinationDataPath/cls/petinfo.lub" || item_failed=true
                copy_status=$([[ "$item_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            6) # Lapine Boxes
                item_failed=false
                copy_file "$sourceDataPath/datainfo/lapineddukddakbox.lub" "$destinationDataPath/datainfo/lapineddukddakbox.lub" || item_failed=true
                copy_file "$sourceDataPath/datainfo/LapineUpgradeBox.lub" "$destinationDataPath/datainfo/LapineUpgradeBox.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/lapineddukddakbox.lub" "$destinationDataPath/cls/lapineddukddakbox.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/lapineupgradebox.lub" "$destinationDataPath/cls/lapineupgradebox.lub" || item_failed=true
                copy_status=$([[ "$item_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            7) # Signboards
                item_failed=false
                copy_file "$sourceDataPath/cls/signboardlist.lub" "$destinationDataPath/cls/signboardlist.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/signboardlist_f.lub" "$destinationDataPath/cls/signboardlist_f.lub" || item_failed=true
                copy_status=$([[ "$item_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            8) # Robes/Costume Garments
                item_failed=false
                copy_file "$sourceDataPath/cls/spriterobeid.lub" "$destinationDataPath/cls/spriterobeid.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/spriterobename.lub" "$destinationDataPath/cls/spriterobename.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/spriterobename_f.lub" "$destinationDataPath/cls/spriterobename_f.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/transparentitem.lub" "$destinationDataPath/cls/transparentitem.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/transparentitem_f.lub" "$destinationDataPath/cls/transparentitem_f.lub" || item_failed=true
                copy_status=$([[ "$item_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            9) # Weapons
                item_failed=false
                copy_file "$sourceDataPath/cls/weapontable.lub" "$destinationDataPath/cls/weapontable.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/weapontable_f.lub" "$destinationDataPath/cls/weapontable_f.lub" || item_failed=true
                copy_status=$([[ "$item_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            10) # World Map
                item_failed=false
                copy_file "$sourceDataPath/cls/worldviewdata_f.lub" "$destinationDataPath/cls/worldviewdata_f.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/worldviewdata_language.lub" "$destinationDataPath/cls/worldviewdata_language.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/worldviewdata_list.lub" "$destinationDataPath/cls/worldviewdata_list.lub" || item_failed=true
                copy_file "$sourceDataPath/cls/worldviewdata_table.lub" "$destinationDataPath/cls/worldviewdata_table.lub" || item_failed=true
                copy_status=$([[ "$item_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            *) # Invalid numeric choice (already handled non-numeric above)
                echo "Invalid choice: $type_choice. Please try again."
                pause_script
                continue # Restart CLSMenu loop
                ;;
        esac

        # Update status indicators after copy attempt
        if [ "$choice_successful" = true ]; then
            if [ "$type_choice" -eq 1 ]; then # All In One Package
                 if [ "$copy_status" -eq 0 ]; then
                     for i in $(seq 1 10); do cls[$i]="[ Copied ]"; done
                 else
                     for i in $(seq 1 10); do cls[$i]="[ Failed ]"; done
                 fi
            elif [ "$type_choice" -ge 2 ] && [ "$type_choice" -le 10 ]; then # Individual packages
                 if [ "$copy_status" -eq 0 ]; then
                     cls[$type_choice]="[ Copied ]"
                 else
                     cls[$type_choice]="[ Failed ]"
                 fi
            fi
        fi
    done
}

# Main script execution
echo "================================================================="
echo "Welcome to the Custom Lua Support Generator!"
echo ""
echo "The Custom Lua Support (or CLS) was created to assist you further"
echo "in adding your custom entries to seperate files, split from the"
echo "original files, so it's easier to update the translation files."
echo ""
echo "To use it you need to use the Nemo/WARP patches,"
echo "so these files can be read from your GRF."
echo "A guide can be found on the Wiki."
echo ""
echo "This will help you to copy over the files you want and need based"
echo "on the choice you make."
echo "It will loop itself until you close the program or choose Exit."
echo "================================================================="
pause_script

CLSMenu # Call the main menu function 