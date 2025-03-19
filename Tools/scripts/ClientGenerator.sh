#!/bin/bash

echo "================================================================="
echo "Welcome to the Client Generator!"
echo "This will help you to copy over the files you want and need based on the choice you make."
echo "Also everytime after you confirmed your choice, any existing Client folder in the"
echo "same folder as this will be deleted without asking."
echo "================================================================="
read -p "Press enter to continue..."

copy_files() {
    if [ -d "../Translation/Compatibility/$1/$2" ]; then
        cp -rf "../Translation/Compatibility/$1/$2/"* "./Client/"
    else
        cp -rf "../Translation/Compatibility/$1/"* "./Client/"
    fi
}

while true; do
    clear
    echo "================================================================="
    echo "Server Mode"
    echo "================================================================="
    echo "[1] Renewal"
    echo "[2] Pre-Renewal"
    echo "[3] Exit"
    echo "================================================================="
    read -p "Please select the mode: " mode

    case $mode in
        1) type="Renewal" ;;
        2) type="Pre-Renewal" ;;
        3) exit ;;
        *) continue ;;
    esac

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
        echo "[18] 2024-04-03"
        echo "[19] 2024-05-02"
        echo "[20] 2024-08-07"
        echo "[21] 2024-10-16"
        echo "[22] 2025-01-22"
        echo "================================================================="
        read -p "Please select the Client Date: " date

        # Set client variable based on date selection
        case $date in
            1) 
                if [ "$mode" == "2" ]; then
                    client="2012-04-10"
                else
                    continue
                fi
                ;;
            2) client="2015-05-13" ;;
            3) client="2015-10-29" ;;
            4) client="2017-06-14" ;;
            5) client="2017-12-13" ;;
            6) client="2018-06-20" ;;
            7) client="2019-06-05" ;;
            8) client="2020-09-02" ;;
            9) client="2021-10-28" ;;
            10) client="2022-03-30" ;;
            11) client="2022-04-06" ;;
            12) client="2022-06-02" ;;
            13) client="2022-08-31" ;;
            14) client="2022-09-28" ;;
            15) client="2023-01-18" ;;
            16) client="2023-08-02" ;;
            17) client="2023-09-20" ;;
            18) client="2024-04-03" ;;
            19) client="2024-05-02" ;;
            20) client="2024-08-07" ;;
            21) client="2024-10-16" ;;
            22) client="2025-01-22" ;;
            *) continue ;;
        esac
        break
    done

    clear
    echo "================================================================="
    echo "Server Mode: $type"
    echo "Client Date: $client"
    echo "================================================================="
    read -p "Proceed?(Y/N): " check
    check=${check:-Y}
    
    if [ "$(echo "$check" | tr '[:lower:]' '[:upper:]')" != "Y" ]; then
        continue
    fi

    # Remove existing Client directory if it exists
    [ -d "./Client" ] && rm -rf "./Client"

    # Create Client directory
    mkdir -p "./Client"

    # Copy Renewal base files
    cp -rf "../Translation/Renewal/"* "./Client/"

    # If Pre-Renewal, copy and overwrite with Pre-Renewal files
    if [ "$mode" == "2" ]; then
        cp -rf "../Translation/Pre-Renewal/"* "./Client/"
    fi

    # Handle older clients
    if [ "$date" == "1" ]; then
        copy_files "2012-04-10" "$type"
    fi
    if [ "$date" == "2" ]; then
        copy_files "2015-05-13" "$type"
    fi

    # Skip if it's the base version
    if [ "$date" != "3" ]; then
        # Handle newer clients
        for ((x=5; x<=date; x++)); do
            case $x in
                5) copy_files "2017-06-14" "$type" ;;
                6) copy_files "2017-12-13" "$type" ;;
                7) copy_files "2018-06-20" "$type" ;;
                8) copy_files "2019-06-05" "$type" ;;
                9) copy_files "2020-09-02" "$type" ;;
                10) copy_files "2021-10-28" "$type" ;;
                11) copy_files "2022-03-30" "$type" ;;
                12) copy_files "2022-04-06" "$type" ;;
                13) copy_files "2022-06-02" "$type" ;;
                14) copy_files "2022-08-31" "$type" ;;
                15) copy_files "2022-09-28" "$type" ;;
                16) copy_files "2023-01-18" "$type" ;;
                17) copy_files "2023-08-02" "$type" ;;
                18) copy_files "2023-09-20" "$type" ;;
                19) copy_files "2024-04-03" "$type" ;;
                20) copy_files "2024-05-02" "$type" ;;
                21) copy_files "2024-08-07" "$type" ;;
                22) copy_files "2024-10-16" "$type" ;;
            esac
        done
    fi

    # Copy compatibility files
    if [ -d "../Translation/Compatibility/$client/$type" ]; then
        cp -rf "../Translation/Compatibility/$client/$type/"* "./Client/"
    else
        cp -rf "../Translation/Compatibility/$client/"* "./Client/"
    fi

    # Remove legacy hateffectinfo files for newer clients
    if [ "$date" -ge 19 ]; then
        if [ -d "./Client/data/luafiles514/lua files/hateffectinfo" ]; then
            rm -rf "./Client/data/luafiles514/lua files/hateffectinfo"
        fi
    fi

    read -p "Press enter to exit..."
    break
done 