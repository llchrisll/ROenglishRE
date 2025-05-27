#!/bin/bash

# Source the helper functions
source "$(dirname "$0")/Helper.sh"

# Global variable definitions
sourceDataPath="../Additions/data"
sourceSystemPath="../Additions/SystemEN"
destinationDataPath="./Client/data"
destinationSystemPath="./Client/SystemEN"
date=""

# Variable for the Korean directory name - will be determined dynamically
KOREAN_DIR_NAME=""

declare -a datac lua_c sys_c omaps mmaps

# Function to determine the correct Korean directory name
determine_korean_dir_name() {
    local base_check_path="../Additions/data/texture"
    local korean_name="유저인터페이스"
    local mojibake_name="À¯ÀúÀÎÅÍÆäÀÌ½º"
    local env_var_name="KOREAN_DIR_NAME"
    local dir_found=false

    echo "Detecting Korean UI directory name..."

    # 1. Check Environment Variable
    if [ -n "${!env_var_name}" ]; then
        local env_val="${!env_var_name}"
        echo "Environment variable $env_var_name found: '$env_val'"
        if [ -d "$base_check_path/$env_val" ]; then
            echo "Using Korean directory name from environment variable: $env_val"
            KOREAN_DIR_NAME="$env_val"
            dir_found=true
        else
            echo "Warning: Directory specified by $env_var_name ('$env_val') not found at $base_check_path."
            echo "         Falling back to default detection."
        fi
    fi

    # 2. Check Default Korean Name (if env var not used or invalid)
    if ! $dir_found; then
        if [ -d "$base_check_path/$korean_name" ]; then
            echo "Detected directory name: $korean_name"
            KOREAN_DIR_NAME="$korean_name"
            dir_found=true
        fi
    fi

    # 3. Check Mojibake Name (if Korean name not found)
    if ! $dir_found; then
        if [ -d "$base_check_path/$mojibake_name" ]; then
            echo "Detected directory name (alternative encoding): $mojibake_name"
            KOREAN_DIR_NAME="$mojibake_name"
            dir_found=true
        fi
    fi

    # 4. Fallback and Warning
    if ! $dir_found; then
        echo "Warning: Could not automatically detect the Korean UI directory."
        echo "         Neither '$korean_name' nor '$mojibake_name' found in $base_check_path."
        echo "         Defaulting to '$korean_name'."
        echo "         If errors occur, please set the $env_var_name environment variable to the correct name."
        KOREAN_DIR_NAME="$korean_name" # Default to the correct name
        pause_script # Give user time to read the warning
    fi
}

# Function for DataMenu
DataMenu() {
    while true; do
        clear
        echo "================================================================="
        echo "Data Folder"
        echo "Client Date: $date"
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
        read -p "Now choose: " data_choice

        local choice_successful=false # Flag if a valid choice was made
        local copy_status=0           # Store status for individual copies
        local any_failure=false       # Flag for All-in-One failure

        case "$data_choice" in
            0) return ;;
            1)
                # Reset individual statuses potentially
                # Copy each item and track failures, updating individual status indicators
                copy_file "$sourceDataPath/bookitemnametable.txt" "$destinationDataPath/bookitemnametable.txt"; local s2=$?; [[ $s2 -ne 0 ]] && any_failure=true && datac[2]="[ Failed ]" || datac[2]="[ Copied ]"
                copy_file "$sourceDataPath/buyingstoreitemlist.txt" "$destinationDataPath/buyingstoreitemlist.txt"; local s3=$?; [[ $s3 -ne 0 ]] && any_failure=true && datac[3]="[ Failed ]" || datac[3]="[ Copied ]"
                # Card files (Choice 4)
                local card_failed=false
                copy_file "$sourceDataPath/carditemnametable.txt" "$destinationDataPath/carditemnametable.txt"; [[ $? -ne 0 ]] && card_failed=true
                copy_file "$sourceDataPath/cardpostfixnametable.txt" "$destinationDataPath/cardpostfixnametable.txt"; [[ $? -ne 0 ]] && card_failed=true
                copy_file "$sourceDataPath/num2cardillustnametable.txt" "$destinationDataPath/num2cardillustnametable.txt"; [[ $? -ne 0 ]] && card_failed=true
                [[ $card_failed = true ]] && any_failure=true && datac[4]="[ Failed ]" || datac[4]="[ Copied ]"
                # Continue for others
                copy_file "$sourceDataPath/etcinfo.txt" "$destinationDataPath/etcinfo.txt"; local s5=$?; [[ $s5 -ne 0 ]] && any_failure=true && datac[5]="[ Failed ]" || datac[5]="[ Copied ]"
                copy_file "$sourceDataPath/exceptionminimapnametable.txt" "$destinationDataPath/exceptionminimapnametable.txt"; local s6=$?; [[ $s6 -ne 0 ]] && any_failure=true && datac[6]="[ Failed ]" || datac[6]="[ Copied ]"
                copy_file "$sourceDataPath/fogParameterTable.txt" "$destinationDataPath/fogParameterTable.txt"; local s7=$?; [[ $s7 -ne 0 ]] && any_failure=true && datac[7]="[ Failed ]" || datac[7]="[ Copied ]"
                copy_file "$sourceDataPath/indoorrswtable.txt" "$destinationDataPath/indoorrswtable.txt"; local s8=$?; [[ $s8 -ne 0 ]] && any_failure=true && datac[8]="[ Failed ]" || datac[8]="[ Copied ]"
                copy_file "$sourceDataPath/itemmoveinfov5.txt" "$destinationDataPath/itemmoveinfov5.txt"; local s9=$?; [[ $s9 -ne 0 ]] && any_failure=true && datac[9]="[ Failed ]" || datac[9]="[ Copied ]"
                copy_file "$sourceDataPath/leveluseskillspamount.txt" "$destinationDataPath/leveluseskillspamount.txt"; local s10=$?; [[ $s10 -ne 0 ]] && any_failure=true && datac[10]="[ Failed ]" || datac[10]="[ Copied ]"
                copy_file "$sourceDataPath/manner.txt" "$destinationDataPath/manner.txt"; local s11=$?; [[ $s11 -ne 0 ]] && any_failure=true && datac[11]="[ Failed ]" || datac[11]="[ Copied ]"
                copy_file "$sourceDataPath/mapobjlighttable.txt" "$destinationDataPath/mapobjlighttable.txt"; local s12=$?; [[ $s12 -ne 0 ]] && any_failure=true && datac[12]="[ Failed ]" || datac[12]="[ Copied ]"
                copy_file "$sourceDataPath/mappostable.txt" "$destinationDataPath/mappostable.txt"; local s13=$?; [[ $s13 -ne 0 ]] && any_failure=true && datac[13]="[ Failed ]" || datac[13]="[ Copied ]"
                copy_file "$sourceDataPath/metalprocessitemtable.txt" "$destinationDataPath/metalprocessitemtable.txt"; local s14=$?; [[ $s14 -ne 0 ]] && any_failure=true && datac[14]="[ Failed ]" || datac[14]="[ Copied ]"
                copy_file "$sourceDataPath/mp3nametable.txt" "$destinationDataPath/mp3nametable.txt"; local s15=$?; [[ $s15 -ne 0 ]] && any_failure=true && datac[15]="[ Failed ]" || datac[15]="[ Copied ]"
                copy_file "$sourceDataPath/resnametable.txt" "$destinationDataPath/resnametable.txt"; local s16=$?; [[ $s16 -ne 0 ]] && any_failure=true && datac[16]="[ Failed ]" || datac[16]="[ Copied ]"
                copy_file "$sourceDataPath/viewpointtable.txt" "$destinationDataPath/viewpointtable.txt"; local s17=$?; [[ $s17 -ne 0 ]] && any_failure=true && datac[17]="[ Failed ]" || datac[17]="[ Copied ]"

                choice_successful=true
                copy_status=$([[ "$any_failure" = true ]] && echo 1 || echo 0) # Set overall status for choice 1
                ;;
            2) copy_file "$sourceDataPath/bookitemnametable.txt" "$destinationDataPath/bookitemnametable.txt"; copy_status=$?; choice_successful=true ;;
            3) copy_file "$sourceDataPath/buyingstoreitemlist.txt" "$destinationDataPath/buyingstoreitemlist.txt"; copy_status=$?; choice_successful=true ;;
            4)
                local card_failed=false
                copy_file "$sourceDataPath/carditemnametable.txt" "$destinationDataPath/carditemnametable.txt"; [[ $? -ne 0 ]] && card_failed=true
                copy_file "$sourceDataPath/cardpostfixnametable.txt" "$destinationDataPath/cardpostfixnametable.txt"; [[ $? -ne 0 ]] && card_failed=true
                copy_file "$sourceDataPath/num2cardillustnametable.txt" "$destinationDataPath/num2cardillustnametable.txt"; [[ $? -ne 0 ]] && card_failed=true
                copy_status=$([[ "$card_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            5) copy_file "$sourceDataPath/etcinfo.txt" "$destinationDataPath/etcinfo.txt"; copy_status=$?; choice_successful=true ;;
            6) copy_file "$sourceDataPath/exceptionminimapnametable.txt" "$destinationDataPath/exceptionminimapnametable.txt"; copy_status=$?; choice_successful=true ;;
            7) copy_file "$sourceDataPath/fogParameterTable.txt" "$destinationDataPath/fogParameterTable.txt"; copy_status=$?; choice_successful=true ;;
            8) copy_file "$sourceDataPath/indoorrswtable.txt" "$destinationDataPath/indoorrswtable.txt"; copy_status=$?; choice_successful=true ;;
            9) copy_file "$sourceDataPath/itemmoveinfov5.txt" "$destinationDataPath/itemmoveinfov5.txt"; copy_status=$?; choice_successful=true ;;
            10) copy_file "$sourceDataPath/leveluseskillspamount.txt" "$destinationDataPath/leveluseskillspamount.txt"; copy_status=$?; choice_successful=true ;;
            11) copy_file "$sourceDataPath/manner.txt" "$destinationDataPath/manner.txt"; copy_status=$?; choice_successful=true ;;
            12) copy_file "$sourceDataPath/mapobjlighttable.txt" "$destinationDataPath/mapobjlighttable.txt"; copy_status=$?; choice_successful=true ;;
            13) copy_file "$sourceDataPath/mappostable.txt" "$destinationDataPath/mappostable.txt"; copy_status=$?; choice_successful=true ;;
            14) copy_file "$sourceDataPath/metalprocessitemtable.txt" "$destinationDataPath/metalprocessitemtable.txt"; copy_status=$?; choice_successful=true ;;
            15) copy_file "$sourceDataPath/mp3nametable.txt" "$destinationDataPath/mp3nametable.txt"; copy_status=$?; choice_successful=true ;;
            16) copy_file "$sourceDataPath/resnametable.txt" "$destinationDataPath/resnametable.txt"; copy_status=$?; choice_successful=true ;;
            17) copy_file "$sourceDataPath/viewpointtable.txt" "$destinationDataPath/viewpointtable.txt"; copy_status=$?; choice_successful=true ;;
            *) echo "Invalid choice. Please try again."; pause_script; continue ;;
        esac

        if [ "$choice_successful" = true ]; then
             # Update status based on copy_status for the chosen item index
             if [ "$copy_status" -eq 0 ]; then
                  datac[$data_choice]="[ Copied ]"
             else
                  datac[$data_choice]="[ Failed ]"
             fi
             # If choice was 1 (All-in-one), the individual statuses were already updated inside the case block
        fi
    done
}

# Function for DataLua
DataLua() {
    while true; do
        clear
        echo "================================================================="
        echo "data\\luafiles514"
        echo "Client Date: $date"
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
        echo "[16] effecttool/forcerendereffect.lub ${lua_c[16]}"
        echo "[17] Hateffectinfo (2024-04-17 and newer) ${lua_c[17]}"
        echo "[18] skilleffectinfo ${lua_c[18]}"
        echo "[19] skillinfoz ${lua_c[19]}"
        echo "[20] stateicon ${lua_c[20]}"
        echo "[21] stylingshop ${lua_c[21]}"
        echo "[22] ItemDBNameTbl (2021-10-28 and newer) ${lua_c[22]}"
        echo "================================================================="
        read -p "Now choose: " lua_choice

        local choice_successful=false
        local copy_status=0
        local any_failure=false

        case "$lua_choice" in
            0) return ;;
            1) # All In One Package
               any_failure=false # Reset status for this run
               copy_dir_recursive "$sourceDataPath/luafiles514" "$destinationDataPath/luafiles514"; copy_status=$?
               [[ $copy_status -ne 0 ]] && any_failure=true

               # Perform date checks and potential deletions/recopies
               if [ "$date" -lt "20240417" ]; then
                    local target_hateffect_dir="$destinationDataPath/luafiles514/lua files/hateffectinfo"
                    if [ -d "$target_hateffect_dir" ]; then rm -rf "$target_hateffect_dir"; fi
                    local source_default_hateffect_dir="../Translation/Renewal/data/luafiles514/lua files/hateffectinfo"
                    # If this copy fails, mark overall failure
                    copy_dir_recursive "$source_default_hateffect_dir" "$target_hateffect_dir"; [[ $? -ne 0 ]] && any_failure=true
               fi
                if [ "$date" -lt "20211028" ]; then
                    local item_db_name_tbl_path="$destinationDataPath/luafiles514/lua files/ItemDBNameTbl.lub"
                    if [ -f "$item_db_name_tbl_path" ]; then rm -f "$item_db_name_tbl_path"; fi # Assume rm success
                fi
               
               choice_successful=true
               copy_status=$([[ "$any_failure" = true ]] && echo 1 || echo 0)

               # Update all statuses based on overall success/failure
               if [ "$copy_status" -eq 0 ]; then
                   for i in $(seq 1 22); do 
                       lua_c[$i]="[ Copied ]"
                       # Apply date exceptions post-copy
                       if [[ "$i" -eq 17 && "$date" -lt 20240417 ]]; then lua_c[$i]=""; fi 
                       if [[ "$i" -eq 22 && "$date" -lt 20211028 ]]; then lua_c[$i]=""; fi 
                   done
               else
                   for i in $(seq 1 22); do lua_c[$i]="[ Failed ]"; done
               fi
               # No need to continue, let the loop redisplay the menu with updated statuses
               ;;
            2)
                local item_failed=false
                copy_file "$sourceDataPath/luafiles514/lua files/datainfo/accessoryid.lub" "$destinationDataPath/luafiles514/lua files/datainfo/accessoryid.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_file "$sourceDataPath/luafiles514/lua files/datainfo/accname.lub" "$destinationDataPath/luafiles514/lua files/datainfo/accname.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_file "$sourceDataPath/luafiles514/lua files/datainfo/accname_eng.lub" "$destinationDataPath/luafiles514/lua files/datainfo/accname_eng.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_file "$sourceDataPath/luafiles514/lua files/datainfo/tb_layer_priority.lub" "$destinationDataPath/luafiles514/lua files/datainfo/tb_layer_priority.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_status=$([[ "$item_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            3) copy_file "$sourceDataPath/luafiles514/lua files/datainfo/changedirectorylist.lub" "$destinationDataPath/luafiles514/lua files/datainfo/changedirectorylist.lub"; copy_status=$?; choice_successful=true ;;
            4) copy_file "$sourceDataPath/luafiles514/lua files/datainfo/DrawItemOnAura.lub" "$destinationDataPath/luafiles514/lua files/datainfo/DrawItemOnAura.lub"; copy_status=$?; choice_successful=true ;;
            5) copy_file "$sourceDataPath/luafiles514/lua files/datainfo/enumvar.lub" "$destinationDataPath/luafiles514/lua files/datainfo/enumvar.lub"; copy_status=$?; choice_successful=true ;;
            6) copy_file "$sourceDataPath/luafiles514/lua files/datainfo/exceptionitemproducer.lub" "$destinationDataPath/luafiles514/lua files/datainfo/exceptionitemproducer.lub"; copy_status=$?; choice_successful=true ;;
            7)
                local item_failed=false
                copy_file "$sourceDataPath/luafiles514/lua files/datainfo/jobidentity.lub" "$destinationDataPath/luafiles514/lua files/datainfo/jobidentity.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_file "$sourceDataPath/luafiles514/lua files/datainfo/jobname.lub" "$destinationDataPath/luafiles514/lua files/datainfo/jobname.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_file "$sourceDataPath/luafiles514/lua files/datainfo/npcidentity.lub" "$destinationDataPath/luafiles514/lua files/datainfo/npcidentity.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_status=$([[ "$item_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            8) copy_file "$sourceDataPath/luafiles514/lua files/datainfo/kaframovemapservicelist.lub" "$destinationDataPath/luafiles514/lua files/datainfo/kaframovemapservicelist.lub"; copy_status=$?; choice_successful=true ;;
            9) copy_file "$sourceDataPath/luafiles514/lua files/datainfo/npclocationradius.lub" "$destinationDataPath/luafiles514/lua files/datainfo/npclocationradius.lub"; copy_status=$?; choice_successful=true ;;
            10) copy_file "$sourceDataPath/luafiles514/lua files/datainfo/shadowtable.lub" "$destinationDataPath/luafiles514/lua files/datainfo/shadowtable.lub"; copy_status=$?; choice_successful=true ;;
            11)
                local item_failed=false
                copy_file "$sourceDataPath/luafiles514/lua files/datainfo/spriterobeid.lub" "$destinationDataPath/luafiles514/lua files/datainfo/spriterobeid.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_file "$sourceDataPath/luafiles514/lua files/datainfo/spriterobename.lub" "$destinationDataPath/luafiles514/lua files/datainfo/spriterobename.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_file "$sourceDataPath/luafiles514/lua files/transparentItem/transparentItem.lub" "$destinationDataPath/luafiles514/lua files/transparentItem/transparentItem.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_status=$([[ "$item_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            12) copy_file "$sourceDataPath/luafiles514/lua files/datainfo/tb_cashshop_banner.lub" "$destinationDataPath/luafiles514/lua files/datainfo/tb_cashshop_banner.lub"; copy_status=$?; choice_successful=true ;;
            13) copy_file "$sourceDataPath/luafiles514/lua files/datainfo/tb_checkattendance_banner.lub" "$destinationDataPath/luafiles514/lua files/datainfo/tb_checkattendance_banner.lub"; copy_status=$?; choice_successful=true ;;
            14) copy_file "$sourceDataPath/luafiles514/lua files/datainfo/weapontable.lub" "$destinationDataPath/luafiles514/lua files/datainfo/weapontable.lub"; copy_status=$?; choice_successful=true ;;
            15)
                local item_failed=false
                copy_file "$sourceDataPath/luafiles514/lua files/worldviewdata/worldviewdata_info.lub" "$destinationDataPath/luafiles514/lua files/worldviewdata/worldviewdata_info.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_file "$sourceDataPath/luafiles514/lua files/worldviewdata/worldviewdata_table.lub" "$destinationDataPath/luafiles514/lua files/worldviewdata/worldviewdata_table.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_status=$([[ "$item_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            16) copy_file "$sourceDataPath/luafiles514/lua files/effecttool/forcerendereffect.lub" "$destinationDataPath/luafiles514/lua files/effecttool/forcerendereffect.lub"; copy_status=$?; choice_successful=true ;;
            17)
                if [ "$date" -ge "20240417" ]; then
                    copy_file "$sourceDataPath/luafiles514/lua files/hateffectinfo/hateffectinfo.lub" "$destinationDataPath/luafiles514/lua files/hateffectinfo/hateffectinfo.lub"; copy_status=$?
                    choice_successful=true
                else
                    echo "These files for hateffects are only supported by 2024-04-17 clients or newer!"
                    pause_script
                    continue
                fi
                ;;
            18)
                local item_failed=false
                copy_file "$sourceDataPath/luafiles514/lua files/skilleffectinfo/actorstate.lub" "$destinationDataPath/luafiles514/lua files/skilleffectinfo/actorstate.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_file "$sourceDataPath/luafiles514/lua files/skilleffectinfo/effectid.lub" "$destinationDataPath/luafiles514/lua files/skilleffectinfo/effectid.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_file "$sourceDataPath/luafiles514/lua files/skilleffectinfo/skilleffectinfolist.lub" "$destinationDataPath/luafiles514/lua files/skilleffectinfo/skilleffectinfolist.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_status=$([[ "$item_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            19)
                local item_failed=false
                copy_file "$sourceDataPath/luafiles514/lua files/skillinfoz/jobinheritlist.lub" "$destinationDataPath/luafiles514/lua files/skillinfoz/jobinheritlist.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_file "$sourceDataPath/luafiles514/lua files/skillinfoz/skillid.lub" "$destinationDataPath/luafiles514/lua files/skillinfoz/skillid.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_file "$sourceDataPath/luafiles514/lua files/skillinfoz/skilltreeview.lub" "$destinationDataPath/luafiles514/lua files/skillinfoz/skilltreeview.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_status=$([[ "$item_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            20)
                local item_failed=false
                copy_file "$sourceDataPath/luafiles514/lua files/stateicon/efstids.lub" "$destinationDataPath/luafiles514/lua files/stateicon/efstids.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_file "$sourceDataPath/luafiles514/lua files/stateicon/stateiconimginfo.lub" "$destinationDataPath/luafiles514/lua files/stateicon/stateiconimginfo.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_file "$sourceDataPath/luafiles514/lua files/stateicon/stateiconinfo.lub" "$destinationDataPath/luafiles514/lua files/stateicon/stateiconinfo.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_file "$sourceDataPath/luafiles514/lua files/stateicon/stateiconinfo_f.lub" "$destinationDataPath/luafiles514/lua files/stateicon/stateiconinfo_f.lub"; [[ $? -ne 0 ]] && item_failed=true
                copy_status=$([[ "$item_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            21) copy_file "$sourceDataPath/luafiles514/lua files/stylingshop/stylingshopinfo.lub" "$destinationDataPath/luafiles514/lua files/stylingshop/stylingshopinfo.lub"; copy_status=$?; choice_successful=true ;;
            22)
                if [ "$date" -ge "20211028" ]; then
                    copy_file "$sourceDataPath/luafiles514/lua files/ItemDBNameTbl.lub" "$destinationDataPath/luafiles514/lua files/ItemDBNameTbl.lub"; copy_status=$?
                    choice_successful=true
                else
                    echo "This file is only supported by 2021-10-28 clients or newer!"
                    pause_script
                    continue
                fi
                ;;
            *) echo "Invalid choice. Please try again."; pause_script; continue ;;
        esac

        # Update status only for individual choices (2-22) here.
        # Choice 1 (All-in-one) handles its own status updates internally.
        if [ "$choice_successful" = true ] && [ "$lua_choice" -ne 1 ]; then 
             if [ "$copy_status" -eq 0 ]; then
                  lua_c[$lua_choice]="[ Copied ]"
                  # Special handling for date restricted items if copy succeeded
                  if [[ "$lua_choice" -eq 17 && "$date" -lt 20240417 ]]; then lua_c[$lua_choice]=""; fi
                  if [[ "$lua_choice" -eq 22 && "$date" -lt 20211028 ]]; then lua_c[$lua_choice]=""; fi
             else
                  lua_c[$lua_choice]="[ Failed ]"
             fi
        fi
    done
}

# Function for SysLua
SysLua() {
    while true; do
        clear
        echo "================================================================="
        echo "System Folder"
        echo "Client Date: $date"
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
        echo "[10] Towninfo_C.lub ${sys_c[10]}"
        echo "[11] mapInfo_C.lub (2019-06-05 and newer) ${sys_c[11]}"
        echo "================================================================="
        read -p "Now choose: " sys_choice

        local choice_successful=false
        local copy_status=0
        local any_failure=false

        case "$sys_choice" in
            0) return ;;
            1) # All In One Package
               any_failure=false # Reset status for this run
               # Check individual items and update statuses
               if [ "$date" -ge "20221207" ]; then
                    copy_file "$sourceSystemPath/ChangeMaterial.lub" "$destinationSystemPath/ChangeMaterial.lub"; local s2=$?; [[ $s2 -ne 0 ]] && any_failure=true && sys_c[2]="[ Failed ]" || sys_c[2]="[ Copied ]"
               else sys_c[2]=""; fi # Skipped due to date
               copy_file "$sourceSystemPath/CheckAttendance.lub" "$destinationSystemPath/CheckAttendance.lub"; local s3=$?; [[ $s3 -ne 0 ]] && any_failure=true && sys_c[3]="[ Failed ]" || sys_c[3]="[ Copied ]"
               # Monster size effect (Choice 4)
               local monster_failed=false
               if [ "$date" -le "20170614" ]; then
                    copy_file "$sourceSystemPath/monster_size_effect 20170614.lub" "$destinationSystemPath/monster_size_effect.lub"; [[ $? -ne 0 ]] && monster_failed=true
               else
                    copy_file "$sourceSystemPath/monster_size_effect.lub" "$destinationSystemPath/monster_size_effect.lub"; [[ $? -ne 0 ]] && monster_failed=true
               fi
               [[ $monster_failed = true ]] && any_failure=true && sys_c[4]="[ Failed ]" || sys_c[4]="[ Copied ]"
               # Continue for others
               copy_file "$sourceSystemPath/PetEvolution.lub" "$destinationSystemPath/PetEvolution.lub"; local s5=$?; [[ $s5 -ne 0 ]] && any_failure=true && sys_c[5]="[ Failed ]" || sys_c[5]="[ Copied ]"
               copy_file "$sourceSystemPath/PrivateAirplane.lub" "$destinationSystemPath/PrivateAirplane.lub"; local s6=$?; [[ $s6 -ne 0 ]] && any_failure=true && sys_c[6]="[ Failed ]" || sys_c[6]="[ Copied ]"
               copy_file "$sourceSystemPath/Signboard_C.lub" "$destinationSystemPath/Signboard_C.lub"; local s7=$?; [[ $s7 -ne 0 ]] && any_failure=true && sys_c[7]="[ Failed ]" || sys_c[7]="[ Copied ]"
               # Ongoing/Recommended Quests (Choice 8)
               local quests_failed=false
               copy_file "$sourceSystemPath/OngoingQuests_C.lub" "$destinationSystemPath/OngoingQuests_C.lub"; [[ $? -ne 0 ]] && quests_failed=true
               copy_file "$sourceSystemPath/RecommendedQuests_C.lub" "$destinationSystemPath/RecommendedQuests_C.lub"; [[ $? -ne 0 ]] && quests_failed=true
               copy_file "$sourceDataPath/luafiles514/lua files/datainfo/questinfo_f.lub" "$destinationDataPath/luafiles514/lua files/datainfo/questinfo_f.lub"; [[ $? -ne 0 ]] && quests_failed=true
               [[ $quests_failed = true ]] && any_failure=true && sys_c[8]="[ Failed ]" || sys_c[8]="[ Copied ]"
               # Rune Folder (Choice 9)
               if [ "$date" -ge "20230802" ]; then
                    copy_dir_recursive "$sourceSystemPath/Rune" "$destinationSystemPath/Rune"; local s9=$?; [[ $s9 -ne 0 ]] && any_failure=true && sys_c[9]="[ Failed ]" || sys_c[9]="[ Copied ]"
               else sys_c[9]=""; fi # Skipped due to date
               # Towninfo (Choice 10)
               copy_file "$sourceSystemPath/Towninfo_C.lub" "$destinationSystemPath/Towninfo_C.lub"; local s10=$?; [[ $s10 -ne 0 ]] && any_failure=true && sys_c[10]="[ Failed ]" || sys_c[10]="[ Copied ]"
               # mapinfo (Choice 11)
               if [ "$date" -ge "20190605" ]; then
                    copy_file "$sourceSystemPath/mapinfo_C.lub" "$destinationSystemPath/mapinfo_C.lub"; local s11=$?; [[ $s11 -ne 0 ]] && any_failure=true && sys_c[11]="[ Failed ]" || sys_c[11]="[ Copied ]"
               else sys_c[11]=""; fi # Skipped due to date

               choice_successful=true
               copy_status=$([[ "$any_failure" = true ]] && echo 1 || echo 0)

               # Update all statuses based on overall success/failure for choice 1
               if [ "$copy_status" -eq 0 ]; then
                   # Mark [1] as copied
                   sys_c[1]="[ Copied ]"
                   # Sub-items were already marked individually above
               else
                   sys_c[1]="[ Failed ]"
                   # Sub-items were already marked individually above, showing specific failures
               fi
               ;;
            2)
                if [ "$date" -ge "20221207" ]; then
                    copy_file "$sourceSystemPath/ChangeMaterial.lub" "$destinationSystemPath/ChangeMaterial.lub"; copy_status=$?
                    choice_successful=true
                else
                    echo "This file is only supported by 2022-12-07 clients or newer!"
                    pause_script
                    continue
                fi
                ;;
            3) copy_file "$sourceSystemPath/CheckAttendance.lub" "$destinationSystemPath/CheckAttendance.lub"; copy_status=$?; choice_successful=true ;;
            4)
                local monster_failed=false
                if [ "$date" -le "20170614" ]; then
                    copy_file "$sourceSystemPath/monster_size_effect 20170614.lub" "$destinationSystemPath/monster_size_effect.lub"; [[ $? -ne 0 ]] && monster_failed=true
                else
                    copy_file "$sourceSystemPath/monster_size_effect.lub" "$destinationSystemPath/monster_size_effect.lub"; [[ $? -ne 0 ]] && monster_failed=true
                fi
                copy_status=$([[ "$monster_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            5) copy_file "$sourceSystemPath/PetEvolution.lub" "$destinationSystemPath/PetEvolution.lub"; copy_status=$?; choice_successful=true ;;
            6) copy_file "$sourceSystemPath/PrivateAirplane.lub" "$destinationSystemPath/PrivateAirplane.lub"; copy_status=$?; choice_successful=true ;;
            7) copy_file "$sourceSystemPath/Signboard_C.lub" "$destinationSystemPath/Signboard_C.lub"; copy_status=$?; choice_successful=true ;;
            8)
                local quests_failed=false
                copy_file "$sourceSystemPath/OngoingQuests_C.lub" "$destinationSystemPath/OngoingQuests_C.lub"; [[ $? -ne 0 ]] && quests_failed=true
                copy_file "$sourceSystemPath/RecommendedQuests_C.lub" "$destinationSystemPath/RecommendedQuests_C.lub"; [[ $? -ne 0 ]] && quests_failed=true
                copy_file "$sourceDataPath/luafiles514/lua files/datainfo/questinfo_f.lub" "$destinationDataPath/luafiles514/lua files/datainfo/questinfo_f.lub"; [[ $? -ne 0 ]] && quests_failed=true
                copy_status=$([[ "$quests_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            9)
                if [ "$date" -ge "20230802" ]; then
                    copy_dir_recursive "$sourceSystemPath/Rune" "$destinationSystemPath/Rune"; copy_status=$?
                    choice_successful=true
                else
                    echo "These files are only supported by 2023-08-02 clients or newer!"
                    pause_script
                    continue
                fi
                ;;
            10) copy_file "$sourceSystemPath/Towninfo_C.lub" "$destinationSystemPath/Towninfo_C.lub"; copy_status=$?; choice_successful=true ;;
            11)
                if [ "$date" -ge "20190605" ]; then
                    copy_file "$sourceSystemPath/mapinfo_C.lub" "$destinationSystemPath/mapinfo_C.lub"; copy_status=$?
                    choice_successful=true
                else
                    echo "This file is only supported by 2019-06-05 clients or newer!"
                    pause_script
                    continue
                fi
                ;;
            *) echo "Invalid choice. Please try again."; pause_script; continue ;;
        esac

        # Update status only for individual choices (2-11) here.
        # Choice 1 (All-in-one) handles its own status updates internally.
        if [ "$choice_successful" = true ] && [ "$sys_choice" -ne 1 ]; then
            if [ "$copy_status" -eq 0 ]; then
                sys_c[$sys_choice]="[ Copied ]"
                # Clear status if date check skipped the copy
                if [[ "$sys_choice" -eq 2 && "$date" -lt 20221207 ]]; then sys_c[$sys_choice]=""; fi
                if [[ "$sys_choice" -eq 9 && "$date" -lt 20230802 ]]; then sys_c[$sys_choice]=""; fi
                if [[ "$sys_choice" -eq 11 && "$date" -lt 20190605 ]]; then sys_c[$sys_choice]=""; fi
            else
                 sys_c[$sys_choice]="[ Failed ]"
            fi
        fi
    done
}

# Helper function for map file copying, returns 1 on failure, 0 on success
copy_map_files() {
    local mapname="$1"
    local failed=false
    copy_file "$sourceDataPath/$mapname.gat" "$destinationDataPath/$mapname.gat" || failed=true
    copy_file "$sourceDataPath/$mapname.gnd" "$destinationDataPath/$mapname.gnd" || failed=true
    copy_file "$sourceDataPath/$mapname.rsw" "$destinationDataPath/$mapname.rsw" || failed=true
    [[ "$failed" = true ]] && return 1 || return 0
}

# Helper function for map file copying including BMP, returns 1 on failure, 0 on success
copy_map_files_with_bmp() {
    local mapname="$1"
    local failed=false
    copy_map_files "$mapname" || failed=true
    copy_file "$sourceDataPath/texture/$KOREAN_DIR_NAME/map/$mapname.bmp" "$destinationDataPath/texture/$KOREAN_DIR_NAME/map/$mapname.bmp" || failed=true
    [[ "$failed" = true ]] && return 1 || return 0
}

# Function for DataMaps
DataMaps() {
    while true; do
        clear
        echo "================================================================="
        echo "Legacy Maps"
        echo "Client Date: $date"
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
        read -p "Choose which maps you want to copy: " map_choice

        local choice_successful=false
        local copy_status=0
        local any_failure=false

        case "$map_choice" in
            0) return ;;
            1) # All in one - Update individual statuses inline
               any_failure=false # Reset for this run

               # Item 2: Airport Maps
               local airport_failed=false
               copy_map_files "einbroch" || airport_failed=true
               copy_map_files "lighthalzen" || airport_failed=true
               copy_map_files "yuno" || airport_failed=true
               [[ $airport_failed = true ]] && any_failure=true && omaps[2]="[ Failed ]" || omaps[2]="[ Copied ]"

               # Item 3: gefenia01.rsw
               copy_file "$sourceDataPath/gefenia01.rsw" "$destinationDataPath/gefenia01.rsw"; local s3=$?; [[ $s3 -ne 0 ]] && any_failure=true && omaps[3]="[ Failed ]" || omaps[3]="[ Copied ]"
               # Item 4: tur_d03_i.rsw
               copy_file "$sourceDataPath/tur_d03_i.rsw" "$destinationDataPath/tur_d03_i.rsw"; local s4=$?; [[ $s4 -ne 0 ]] && any_failure=true && omaps[4]="[ Failed ]" || omaps[4]="[ Copied ]"
               # Item 5: aldeg_cas01.rsw
               copy_file "$sourceDataPath/aldeg_cas01.rsw" "$destinationDataPath/aldeg_cas01.rsw"; local s5=$?; [[ $s5 -ne 0 ]] && any_failure=true && omaps[5]="[ Failed ]" || omaps[5]="[ Copied ]"
               # Item 6: gef_fild02.rsw
               copy_file "$sourceDataPath/gef_fild02.rsw" "$destinationDataPath/gef_fild02.rsw"; local s6=$?; [[ $s6 -ne 0 ]] && any_failure=true && omaps[6]="[ Failed ]" || omaps[6]="[ Copied ]"
               # Item 7: gl_cas01.rsw
               copy_file "$sourceDataPath/gl_cas01.rsw" "$destinationDataPath/gl_cas01.rsw"; local s7=$?; [[ $s7 -ne 0 ]] && any_failure=true && omaps[7]="[ Failed ]" || omaps[7]="[ Copied ]"
               # Item 8: mjolnir_07.rsw
               copy_file "$sourceDataPath/mjolnir_07.rsw" "$destinationDataPath/mjolnir_07.rsw"; local s8=$?; [[ $s8 -ne 0 ]] && any_failure=true && omaps[8]="[ Failed ]" || omaps[8]="[ Copied ]"
               # Item 9: mjolnir_08.rsw
               copy_file "$sourceDataPath/mjolnir_08.rsw" "$destinationDataPath/mjolnir_08.rsw"; local s9=$?; [[ $s9 -ne 0 ]] && any_failure=true && omaps[9]="[ Failed ]" || omaps[9]="[ Copied ]"
               # Item 10: mjolnir_09.rsw
               copy_file "$sourceDataPath/mjolnir_09.rsw" "$destinationDataPath/mjolnir_09.rsw"; local s10=$?; [[ $s10 -ne 0 ]] && any_failure=true && omaps[10]="[ Failed ]" || omaps[10]="[ Copied ]"
               # Item 11: mjolnir_10.rsw
               copy_file "$sourceDataPath/mjolnir_10.rsw" "$destinationDataPath/mjolnir_10.rsw"; local s11=$?; [[ $s11 -ne 0 ]] && any_failure=true && omaps[11]="[ Failed ]" || omaps[11]="[ Copied ]"
               # Item 12: mjolnir_11.rsw
               copy_file "$sourceDataPath/mjolnir_11.rsw" "$destinationDataPath/mjolnir_11.rsw"; local s12=$?; [[ $s12 -ne 0 ]] && any_failure=true && omaps[12]="[ Failed ]" || omaps[12]="[ Copied ]"
               # Item 13: moc_fild01.rsw
               copy_file "$sourceDataPath/moc_fild01.rsw" "$destinationDataPath/moc_fild01.rsw"; local s13=$?; [[ $s13 -ne 0 ]] && any_failure=true && omaps[13]="[ Failed ]" || omaps[13]="[ Copied ]"
               # Item 14: paramk.rsw
               copy_file "$sourceDataPath/paramk.rsw" "$destinationDataPath/paramk.rsw"; local s14=$?; [[ $s14 -ne 0 ]] && any_failure=true && omaps[14]="[ Failed ]" || omaps[14]="[ Copied ]"
               # Item 15: pay_fild04.rsw
               copy_file "$sourceDataPath/pay_fild04.rsw" "$destinationDataPath/pay_fild04.rsw"; local s15=$?; [[ $s15 -ne 0 ]] && any_failure=true && omaps[15]="[ Failed ]" || omaps[15]="[ Copied ]"
               # Item 16: prt_fild00.rsw
               copy_file "$sourceDataPath/prt_fild00.rsw" "$destinationDataPath/prt_fild00.rsw"; local s16=$?; [[ $s16 -ne 0 ]] && any_failure=true && omaps[16]="[ Failed ]" || omaps[16]="[ Copied ]"
               # Item 17: prt_fild01.rsw
               copy_file "$sourceDataPath/prt_fild01.rsw" "$destinationDataPath/prt_fild01.rsw"; local s17=$?; [[ $s17 -ne 0 ]] && any_failure=true && omaps[17]="[ Failed ]" || omaps[17]="[ Copied ]"
               # Item 18: prt_fild02.rsw
               copy_file "$sourceDataPath/prt_fild02.rsw" "$destinationDataPath/prt_fild02.rsw"; local s18=$?; [[ $s18 -ne 0 ]] && any_failure=true && omaps[18]="[ Failed ]" || omaps[18]="[ Copied ]"
               # Item 19: prt_fild03.rsw
               copy_file "$sourceDataPath/prt_fild03.rsw" "$destinationDataPath/prt_fild03.rsw"; local s19=$?; [[ $s19 -ne 0 ]] && any_failure=true && omaps[19]="[ Failed ]" || omaps[19]="[ Copied ]"
               # Item 20: prt_fild04.rsw
               copy_file "$sourceDataPath/prt_fild04.rsw" "$destinationDataPath/prt_fild04.rsw"; local s20=$?; [[ $s20 -ne 0 ]] && any_failure=true && omaps[20]="[ Failed ]" || omaps[20]="[ Copied ]"
               # Item 21: prt_fild05.rsw
               copy_file "$sourceDataPath/prt_fild05.rsw" "$destinationDataPath/prt_fild05.rsw"; local s21=$?; [[ $s21 -ne 0 ]] && any_failure=true && omaps[21]="[ Failed ]" || omaps[21]="[ Copied ]"
               # Item 22: prt_fild06.rsw
               copy_file "$sourceDataPath/prt_fild06.rsw" "$destinationDataPath/prt_fild06.rsw"; local s22=$?; [[ $s22 -ne 0 ]] && any_failure=true && omaps[22]="[ Failed ]" || omaps[22]="[ Copied ]"
               # Item 23: prt_fild07.rsw
               copy_file "$sourceDataPath/prt_fild07.rsw" "$destinationDataPath/prt_fild07.rsw"; local s23=$?; [[ $s23 -ne 0 ]] && any_failure=true && omaps[23]="[ Failed ]" || omaps[23]="[ Copied ]"
               # Item 24: prt_fild09.rsw
               copy_file "$sourceDataPath/prt_fild09.rsw" "$destinationDataPath/prt_fild09.rsw"; local s24=$?; [[ $s24 -ne 0 ]] && any_failure=true && omaps[24]="[ Failed ]" || omaps[24]="[ Copied ]"
               # Item 25: prt_fild10.rsw
               copy_file "$sourceDataPath/prt_fild10.rsw" "$destinationDataPath/prt_fild10.rsw"; local s25=$?; [[ $s25 -ne 0 ]] && any_failure=true && omaps[25]="[ Failed ]" || omaps[25]="[ Copied ]"

               # Item 26: 2009rwc_ Maps
               local rwc09_failed=false
               for i in $(seq 1 8); do copy_map_files_with_bmp "2009rwc_0$i" || rwc09_failed=true; done
               copy_map_files_with_bmp "2009rwc_f01" || rwc09_failed=true
               [[ $rwc09_failed = true ]] && any_failure=true && omaps[26]="[ Failed ]" || omaps[26]="[ Copied ]"

               # Item 27: 2012rwc_ Maps
               local rwc12_failed=false
               for i in $(seq 1 8); do copy_map_files "2012rwc_0$i" || rwc12_failed=true; done
               [[ $rwc12_failed = true ]] && any_failure=true && omaps[27]="[ Failed ]" || omaps[27]="[ Copied ]"

               # Item 28: poring_c01
               copy_map_files_with_bmp "poring_c01"; local s28=$?; [[ $s28 -ne 0 ]] && any_failure=true && omaps[28]="[ Failed ]" || omaps[28]="[ Copied ]"
               # Item 29: poring_c02
               copy_map_files_with_bmp "poring_c02"; local s29=$?; [[ $s29 -ne 0 ]] && any_failure=true && omaps[29]="[ Failed ]" || omaps[29]="[ Copied ]"
               # Item 30: sch_lab
               copy_map_files_with_bmp "sch_lab"; local s30=$?; [[ $s30 -ne 0 ]] && any_failure=true && omaps[30]="[ Failed ]" || omaps[30]="[ Copied ]"
               # Item 31: airplane
               copy_file "$sourceDataPath/airplane.rsw" "$destinationDataPath/airplane.rsw"; local s31=$?; [[ $s31 -ne 0 ]] && any_failure=true && omaps[31]="[ Failed ]" || omaps[31]="[ Copied ]"
               # Item 32: payon
               copy_map_files_with_bmp "payon"; local s32=$?; [[ $s32 -ne 0 ]] && any_failure=true && omaps[32]="[ Failed ]" || omaps[32]="[ Copied ]"
               # Item 33: ra_temple
               copy_map_files "ra_temple"; local s33=$?; [[ $s33 -ne 0 ]] && any_failure=true && omaps[33]="[ Failed ]" || omaps[33]="[ Copied ]"
               # Item 34: spl_fild01
               copy_file "$sourceDataPath/spl_fild01.rsw" "$destinationDataPath/spl_fild01.rsw"; local s34=$?; [[ $s34 -ne 0 ]] && any_failure=true && omaps[34]="[ Failed ]" || omaps[34]="[ Copied ]"
               # Item 35: aldebaran
               copy_file "$sourceDataPath/aldebaran.rsw" "$destinationDataPath/aldebaran.rsw"; local s35=$?; [[ $s35 -ne 0 ]] && any_failure=true && omaps[35]="[ Failed ]" || omaps[35]="[ Copied ]"

               choice_successful=true
               copy_status=$([[ "$any_failure" = true ]] && echo 1 || echo 0) # Set overall status for choice 1
               ;;
            2) # Airport Maps
               local airport_failed=false
               copy_map_files "einbroch" || airport_failed=true
               copy_map_files "lighthalzen" || airport_failed=true
               copy_map_files "yuno" || airport_failed=true
               copy_status=$([[ "$airport_failed" = true ]] && echo 1 || echo 0)
               choice_successful=true
               ;;
            3) copy_file "$sourceDataPath/gefenia01.rsw" "$destinationDataPath/gefenia01.rsw"; copy_status=$?; choice_successful=true ;;
            4) copy_file "$sourceDataPath/tur_d03_i.rsw" "$destinationDataPath/tur_d03_i.rsw"; copy_status=$?; choice_successful=true ;;
            5) copy_file "$sourceDataPath/aldeg_cas01.rsw" "$destinationDataPath/aldeg_cas01.rsw"; copy_status=$?; choice_successful=true ;;
            6) copy_file "$sourceDataPath/gef_fild02.rsw" "$destinationDataPath/gef_fild02.rsw"; copy_status=$?; choice_successful=true ;;
            7) copy_file "$sourceDataPath/gl_cas01.rsw" "$destinationDataPath/gl_cas01.rsw"; copy_status=$?; choice_successful=true ;;
            8) copy_file "$sourceDataPath/mjolnir_07.rsw" "$destinationDataPath/mjolnir_07.rsw"; copy_status=$?; choice_successful=true ;;
            9) copy_file "$sourceDataPath/mjolnir_08.rsw" "$destinationDataPath/mjolnir_08.rsw"; copy_status=$?; choice_successful=true ;;
            10) copy_file "$sourceDataPath/mjolnir_09.rsw" "$destinationDataPath/mjolnir_09.rsw"; copy_status=$?; choice_successful=true ;;
            11) copy_file "$sourceDataPath/mjolnir_10.rsw" "$destinationDataPath/mjolnir_10.rsw"; copy_status=$?; choice_successful=true ;;
            12) copy_file "$sourceDataPath/mjolnir_11.rsw" "$destinationDataPath/mjolnir_11.rsw"; copy_status=$?; choice_successful=true ;;
            13) copy_file "$sourceDataPath/moc_fild01.rsw" "$destinationDataPath/moc_fild01.rsw"; copy_status=$?; choice_successful=true ;;
            14) copy_file "$sourceDataPath/paramk.rsw" "$destinationDataPath/paramk.rsw"; copy_status=$?; choice_successful=true ;;
            15) copy_file "$sourceDataPath/pay_fild04.rsw" "$destinationDataPath/pay_fild04.rsw"; copy_status=$?; choice_successful=true ;;
            16) copy_file "$sourceDataPath/prt_fild00.rsw" "$destinationDataPath/prt_fild00.rsw"; copy_status=$?; choice_successful=true ;;
            17) copy_file "$sourceDataPath/prt_fild01.rsw" "$destinationDataPath/prt_fild01.rsw"; copy_status=$?; choice_successful=true ;;
            18) copy_file "$sourceDataPath/prt_fild02.rsw" "$destinationDataPath/prt_fild02.rsw"; copy_status=$?; choice_successful=true ;;
            19) copy_file "$sourceDataPath/prt_fild03.rsw" "$destinationDataPath/prt_fild03.rsw"; copy_status=$?; choice_successful=true ;;
            20) copy_file "$sourceDataPath/prt_fild04.rsw" "$destinationDataPath/prt_fild04.rsw"; copy_status=$?; choice_successful=true ;;
            21) copy_file "$sourceDataPath/prt_fild05.rsw" "$destinationDataPath/prt_fild05.rsw"; copy_status=$?; choice_successful=true ;;
            22) copy_file "$sourceDataPath/prt_fild06.rsw" "$destinationDataPath/prt_fild06.rsw"; copy_status=$?; choice_successful=true ;;
            23) copy_file "$sourceDataPath/prt_fild07.rsw" "$destinationDataPath/prt_fild07.rsw"; copy_status=$?; choice_successful=true ;;
            24) copy_file "$sourceDataPath/prt_fild09.rsw" "$destinationDataPath/prt_fild09.rsw"; copy_status=$?; choice_successful=true ;;
            25) copy_file "$sourceDataPath/prt_fild10.rsw" "$destinationDataPath/prt_fild10.rsw"; copy_status=$?; choice_successful=true ;;
            26) # 2009rwc_ Maps
                local rwc09_failed=false
                for i in $(seq 1 8); do copy_map_files_with_bmp "2009rwc_0$i" || rwc09_failed=true; done
                copy_map_files_with_bmp "2009rwc_f01" || rwc09_failed=true
                copy_status=$([[ "$rwc09_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            27) # 2012rwc_ Maps
                local rwc12_failed=false
                for i in $(seq 1 8); do copy_map_files "2012rwc_0$i" || rwc12_failed=true; done
                copy_status=$([[ "$rwc12_failed" = true ]] && echo 1 || echo 0)
                choice_successful=true
                ;;
            28) copy_map_files_with_bmp "poring_c01"; copy_status=$?; choice_successful=true ;;
            29) copy_map_files_with_bmp "poring_c02"; copy_status=$?; choice_successful=true ;;
            30) copy_map_files_with_bmp "sch_lab"; copy_status=$?; choice_successful=true ;;
            31) copy_file "$sourceDataPath/airplane.rsw" "$destinationDataPath/airplane.rsw"; copy_status=$?; choice_successful=true ;;
            32) copy_map_files_with_bmp "payon"; copy_status=$?; choice_successful=true ;;
            33) copy_map_files "ra_temple"; copy_status=$?; choice_successful=true ;; 
            34) copy_file "$sourceDataPath/spl_fild01.rsw" "$destinationDataPath/spl_fild01.rsw"; copy_status=$?; choice_successful=true ;;
            35) copy_file "$sourceDataPath/aldebaran.rsw" "$destinationDataPath/aldebaran.rsw"; copy_status=$?; choice_successful=true ;;
            *) echo "Invalid choice. Please try again."; pause_script; continue ;;
        esac

        if [ "$choice_successful" = true ]; then
             if [ "$copy_status" -eq 0 ]; then
                  omaps[$map_choice]="[ Copied ]"
             else
                  omaps[$map_choice]="[ Failed ]"
             fi
             # If choice was 1 (All-in-one), the individual sub-item statuses were already updated inside the case block
        fi
    done
}

# Function for MiniMaps
MiniMaps() {
    while true; do
        clear
        echo "================================================================="
        echo "Legacy Minimaps"
        echo "Client Date: $date"
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
        read -p "Choose which minimaps you want to copy: " bmap_choice

        local choice_successful=false
        local copy_status=0
        local any_failure=false # For All-in-one
        local minimap_base_src_path="$sourceDataPath/texture/$KOREAN_DIR_NAME/map"
        local minimap_base_dst_path="$destinationDataPath/texture/$KOREAN_DIR_NAME/map"

        case "$bmap_choice" in
            0) return ;;
            1) # All in One Package
               any_failure=false # Reset for this run
               # Copy the entire directory first
               copy_dir_recursive "$minimap_base_src_path" "$minimap_base_dst_path"
               copy_status=$?

               # Update individual statuses based on file existence *after* the bulk copy attempt
               # This is less precise than tracking each file, but simpler than listing all files.
               # We can assume if the dir copy failed, all individuals failed.
               # If it succeeded, we assume individuals succeeded unless a file check shows otherwise (less likely after successful cp -R).
               for i in $(seq 2 15); do
                   local bmp_name=""
                   case $i in 
                       2) bmp_name="ama_dun01.bmp";; 3) bmp_name="ayo_dun01.bmp";; 4) bmp_name="ice_dun04.bmp";;
                       5) bmp_name="map2_int.bmp";; 6) bmp_name="new_zone02.bmp";; 7) bmp_name="new_zone04.bmp";;
                       8) bmp_name="ra_temsky.bmp";; 9) bmp_name="tha_t07.bmp";; 10) bmp_name="tha_t08.bmp";;
                       11) bmp_name="thana_boss.bmp";; 12) bmp_name="tur_dun05.bmp";; 13) bmp_name="tur_dun06.bmp";;
                       14) bmp_name="yggdrasil01.bmp";; 15) bmp_name="yuno_in02.bmp";;
                   esac
                   if [ -n "$bmp_name" ]; then
                       if [ "$copy_status" -eq 0 ] && [ -f "$minimap_base_dst_path/$bmp_name" ]; then
                           mmaps[$i]="[ Copied ]"
                       else
                           mmaps[$i]="[ Failed ]"
                           any_failure=true # Mark overall failure if any individual check fails post-copy
                       fi
                   fi
               done
               choice_successful=true
               copy_status=$([[ "$any_failure" = true ]] && echo 1 || echo 0)
               ;;
            2) copy_file "$minimap_base_src_path/ama_dun01.bmp" "$minimap_base_dst_path/ama_dun01.bmp"; copy_status=$?; choice_successful=true ;;
            3) copy_file "$minimap_base_src_path/ayo_dun01.bmp" "$minimap_base_dst_path/ayo_dun01.bmp"; copy_status=$?; choice_successful=true ;;
            4) copy_file "$minimap_base_src_path/ice_dun04.bmp" "$minimap_base_dst_path/ice_dun04.bmp"; copy_status=$?; choice_successful=true ;;
            5) copy_file "$minimap_base_src_path/map2_int.bmp" "$minimap_base_dst_path/map2_int.bmp"; copy_status=$?; choice_successful=true ;;
            6) copy_file "$minimap_base_src_path/new_zone02.bmp" "$minimap_base_dst_path/new_zone02.bmp"; copy_status=$?; choice_successful=true ;;
            7) copy_file "$minimap_base_src_path/new_zone04.bmp" "$minimap_base_dst_path/new_zone04.bmp"; copy_status=$?; choice_successful=true ;;
            8) copy_file "$minimap_base_src_path/ra_temsky.bmp" "$minimap_base_dst_path/ra_temsky.bmp"; copy_status=$?; choice_successful=true ;;
            9) copy_file "$minimap_base_src_path/tha_t07.bmp" "$minimap_base_dst_path/tha_t07.bmp"; copy_status=$?; choice_successful=true ;;
            10) copy_file "$minimap_base_src_path/tha_t08.bmp" "$minimap_base_dst_path/tha_t08.bmp"; copy_status=$?; choice_successful=true ;;
            11) copy_file "$minimap_base_src_path/thana_boss.bmp" "$minimap_base_dst_path/thana_boss.bmp"; copy_status=$?; choice_successful=true ;;
            12) copy_file "$minimap_base_src_path/tur_dun05.bmp" "$minimap_base_dst_path/tur_dun05.bmp"; copy_status=$?; choice_successful=true ;;
            13) copy_file "$minimap_base_src_path/tur_dun06.bmp" "$minimap_base_dst_path/tur_dun06.bmp"; copy_status=$?; choice_successful=true ;;
            14) copy_file "$minimap_base_src_path/yggdrasil01.bmp" "$minimap_base_dst_path/yggdrasil01.bmp"; copy_status=$?; choice_successful=true ;;
            15) copy_file "$minimap_base_src_path/yuno_in02.bmp" "$minimap_base_dst_path/yuno_in02.bmp"; copy_status=$?; choice_successful=true ;;
            *) echo "Invalid choice. Please try again."; pause_script; continue ;;
        esac

        if [ "$choice_successful" = true ]; then
            if [ "$copy_status" -eq 0 ]; then
                 mmaps[$bmap_choice]="[ Copied ]"
            else
                 mmaps[$bmap_choice]="[ Failed ]"
                 # For All-in-one, also mark [1] as failed
                 if [ "$bmap_choice" -eq 1 ]; then mmaps[1]="[ Failed ]"; fi
            fi
            # If choice was 1, individual statuses were updated inside the case block
        fi
    done
}


# Main script execution
echo "================================================================="
echo "Welcome to the Additions Generator!"
echo "This will help you to copy over the files you want and need based on the choice you make."
echo "It will loop itself until you close the program or choose Exit."
echo "================================================================="
echo "Note: This should only be used after you run the ClientGenerator.sh!"
echo "================================================================="
pause_script

# Determine the Korean directory name *before* entering menus
determine_korean_dir_name

clear
echo "================================================================="
echo "First, type the Client Date you are using, that way it will only copy the files,"
echo "your client supports!"
echo "================================================================="
echo "Example: 20220406 for 2022-04-06"
echo "================================================================="
while true; do
    read -p "Client Date (YYYYMMDD): " date
    if [[ "$date" =~ ^[0-9]{8}$ ]]; then 
        break
    else
        echo "Invalid date format. Please use YYYYMMDD (e.g., 20220406)."
    fi
done

while true; do
    clear
    echo "================================================================="
    echo "Client Date: $date"
    echo "================================================================="
    echo "[1] Data Folder"
    echo "[2] data/luafiles514"
    echo "[3] System Folder"
    echo "[4] Legacy Maps"
    echo "[5] Legacy Minimaps"
    echo "[6] Exit"
    echo "================================================================="
    read -p "Now choose: " type_choice

    case "$type_choice" in
        1) DataMenu ;;
        2) DataLua ;;
        3) SysLua ;;
        4) DataMaps ;;
        5) MiniMaps ;;
        6) echo "Exiting Additions Generator."; exit 0 ;;
        *) echo "Invalid choice. Please try again."; pause_script ;;
    esac
done 