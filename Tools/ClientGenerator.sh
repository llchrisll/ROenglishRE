#!/bin/bash

# Source the helper functions
source "$(dirname "$0")/Helper.sh"

# Function to handle compatibility file copying (replaces :CopyFD)
CopyFD() {
    local selected_client_date_folder="$1" # e.g., 2012-04-10
    local selected_type="$2"           # Renewal or Pre-Renewal
    local base_compat_path="../Translation/Compatibility"
    local destination_client_path="./Client"

    local type_specific_path="$base_compat_path/$selected_client_date_folder/$selected_type/"
    local generic_date_path="$base_compat_path/$selected_client_date_folder/"

    if [ -d "$type_specific_path" ]; then
        echo "Copying files from: $type_specific_path"
        copy_dir_recursive "$type_specific_path" "$destination_client_path/" # || return 1 # Optional: Propagate error up if needed
    elif [ -d "$generic_date_path" ]; then
        echo "Copying files from: $generic_date_path"
        copy_dir_recursive "$generic_date_path" "$destination_client_path/" # || return 1
    fi
}

# Main script execution
echo "================================================================="
echo "Welcome to the Client Generator!"
echo "This will help you to copy over the files you want and need based on the choice you make."
echo "Also everytime after you confirmed your choice, any existing Client folder in the"
echo "same folder as this will be deleted without asking."
echo "================================================================="
pause_script

server_mode_choice=""
client_type=""
client_date_choice_num=""
client_version_string=""

# ModeMenu
while true; do
    clear
    echo "================================================================="
    echo "Server Mode"
    echo "================================================================="
    echo "[1] Renewal"
    echo "[2] Pre-Renewal"
    echo "[3] Exit"
    echo "================================================================="
    read -p "Please select the mode: " server_mode_choice
    case "$server_mode_choice" in
        1) client_type="Renewal"; break ;;
        2) client_type="Pre-Renewal"; break ;;
        3) echo "Exiting."; exit 0 ;;
        *) echo "Invalid selection. Please try again."; pause_script ;;
    esac
done

# DateMenu
# Associative array for date choices (index -> YYYY-MM-DD)
declare -A date_options
date_options[1]="2012-04-10"
date_options[2]="2015-05-13"
date_options[3]="2015-10-29" # Project Base
date_options[4]="2017-06-14"
date_options[5]="2017-12-13"
date_options[6]="2018-06-20"
date_options[7]="2019-06-05"
date_options[8]="2020-09-02"
date_options[9]="2021-10-28"
date_options[10]="2022-03-30"
date_options[11]="2022-04-06"
date_options[12]="2022-06-02"
date_options[13]="2022-08-31"
date_options[14]="2022-09-28"
date_options[15]="2023-01-18"
date_options[16]="2023-08-02"
date_options[17]="2023-09-20"
date_options[18]="2024-03-11"
date_options[19]="2024-04-03" # Used for hateffectinfo logic (date >= 19)
date_options[20]="2024-05-02"
date_options[21]="2024-08-07"
date_options[22]="2024-10-16"
date_options[23]="2025-01-22"

while true; do
    clear
    echo "================================================================="
    echo "Client Dates"
    echo "================================================================="
    echo "[1] 2012-04-10 (Pre-Re only)"
    echo "[2] 2015-05-13"
    echo "[3] 2015-10-29 (Project Base)"
    echo "[4] 2017-06-14"
    echo "[5] 2017-12-13"
    echo "[6] 2018-06-20"
    echo "[7] 2019-06-05"
    echo "[8] 2020-09-02"
    echo "[9] 2021-10-28"
    echo "[10] 2022-03-30"
    echo "[11] 2022-04-06"
    echo "[12] 2022-06-02"
    echo "[13] 2022-08-31"
    echo "[14] 2022-09-28"
    echo "[15] 2023-01-18"
    echo "[16] 2023-08-02"
    echo "[17] 2023-09-20"
    echo "[18] 2024-03-11"
    echo "[19] 2024-04-03"
    echo "[20] 2024-05-02"
    echo "[21] 2024-08-07"
    echo "[22] 2024-10-16"
    echo "[23] 2025-01-22"
    echo "================================================================="
    read -p "Please select the Client Date: " client_date_choice_num

    client_version_string="${date_options[$client_date_choice_num]}"

    if [ -z "$client_version_string" ]; then
        echo "Invalid selection. Please try again."
        pause_script
        continue
    fi

    if [ "$client_date_choice_num" -eq 1 ] && [ "$server_mode_choice" -ne 2 ]; then
        echo "2012-04-10 is Pre-Renewal only. Current mode is $client_type."
        client_version_string="" 
        pause_script
        continue 
    fi
    break 
done

if [ -z "$client_version_string" ]; then
    echo "No client version selected or invalid combination. Exiting."
    exit 1
fi

clear
echo "================================================================="
echo "Server Mode: $client_type"
echo "Client Date: $client_version_string (Choice number: $client_date_choice_num)"
echo "================================================================="
read -p "Proceed?(Y/N) [Y]: " confirm_proceed
confirm_proceed=${confirm_proceed:-Y} 

if [[ "$confirm_proceed" != "Y" && "$confirm_proceed" != "y" ]]; then
    echo "Operation cancelled. Returning to Mode Menu."
    exec "$0" 
    exit 0
fi

# Delete existing Client folder
if [ -d "Client/" ]; then
    echo "Removing existing Client directory..."
    rm -rf "Client/"
fi

# Renewal is base for the project
echo "Copying base Renewal files..."
copy_dir_recursive "../Translation/Renewal" "./Client"

# If Pre-Renewal also overwrite existing files from Pre-Renewal
if [ "$server_mode_choice" -eq 2 ]; then 
    echo "Copying Pre-Renewal files (overwrite)..."
    copy_dir_recursive "../Translation/Pre-Renewal" "./Client"
fi

# Files for older Clients than the Projects Base Version (choice 3: 2015-10-29)
if [ "$client_date_choice_num" -eq 1 ]; then # 2012-04-10
    CopyFD "2012-04-10" "$client_type"
fi
if [ "$client_date_choice_num" -eq 2 ]; then # 2015-05-13
    CopyFD "2015-05-13" "$client_type"
fi

# If it's the same as the project version (choice 3), this loop is skipped
# DateLoop: Files for newer Clients than Base Version (choice 3)
if [ "$client_date_choice_num" -ne 3 ]; then
    # Apply patches for menu items from 4 up to client_date_choice_num.
    for loop_choice_num in $(seq 4 23); do # Corresponds to menu items 4 through 23
        if [ "$loop_choice_num" -le "$client_date_choice_num" ]; then
            date_to_patch="${date_options[$loop_choice_num]}"
            if [ -n "$date_to_patch" ]; then
                # CopyFD will log if it copies anything
                CopyFD "$date_to_patch" "$client_type"
            fi
        fi
    done
fi 

# Final compatibility copy based on the exact client_version_string selected.
# The batch script has a final xcopy block that effectively does this.
# If the loop above already applied the latest patch for client_version_string,
# this might be redundant or ensure the specific version's files take precedence if structured differently.
# We keep it to mirror the batch logic of a final, specific copy.
# CopyFD itself will check existence and only copy/log if found.
# No extra "Applying final compatibility..." log needed if CopyFD logs its action.
CopyFD "$client_version_string" "$client_type"


# Removes legacy hateffectinfo files
if [ "$client_date_choice_num" -ge 19 ]; then # Choice 19 (2024-04-03) or newer
    hateffect_dir="./Client/data/luafiles514/lua files/hateffectinfo/"
    if [ -d "$hateffect_dir" ]; then
        echo "Removing legacy hateffectinfo for newer client: $hateffect_dir"
        rm -rf "$hateffect_dir"
    fi
fi

echo "Client generation process complete."
pause_script
exit 0 