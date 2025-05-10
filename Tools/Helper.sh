#!/bin/bash

# Common helper functions for roenglish Tools scripts

# Helper function to pause
pause_script() {
    read -n 1 -s -r -p "Press any key to continue..."
    echo
}

# Helper function to copy a single file
# Returns 0 on success, 1 on failure
copy_file() {
    local src="$1"
    local dst="$2"
    
    if [ ! -f "$src" ]; then
        echo "Error: Source file $src not found for copy operation."
        pause_script
        return 1 
    fi

    mkdir -p "$(dirname "$dst")"
    local mkdir_status=$?
    if [ $mkdir_status -ne 0 ]; then
        echo "Error: Failed to create destination directory $(dirname "$dst") for $dst. mkdir exited with status $mkdir_status."
        pause_script
        return 1
    fi

    cp -f "$src" "$dst"
    local cp_status=$?
    if [ $cp_status -ne 0 ]; then
        echo "Error: Failed to copy file $src to $dst. cp command exited with status $cp_status."
        pause_script
        return 1
    fi
    return 0
}

# Helper function to copy directory contents recursively
# Returns 0 on success, 1 on failure
copy_dir_recursive() {
    local src_dir="$1"
    local dst_dir="$2"

    if [ ! -d "$src_dir" ]; then 
        echo "Error: Source directory $src_dir not found for copy operation."
        pause_script
        return 1
    fi

    mkdir -p "$dst_dir"
    local mkdir_status=$?
    if [ $mkdir_status -ne 0 ]; then
        echo "Error: Failed to create destination directory $dst_dir. mkdir exited with status $mkdir_status."
        pause_script
        return 1
    fi
    
    cp -R -f "$src_dir/." "$dst_dir/"
    local cp_status=$?
    if [ $cp_status -ne 0 ]; then
        echo "Error: Failed to copy directory contents from $src_dir to $dst_dir. cp command exited with status $cp_status."
        pause_script
        return 1
    fi
    return 0
}

# Add any other common functions here in the future 