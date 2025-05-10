#!/bin/bash

# Source the helper functions
source "$(dirname "$0")/Helper.sh"

echo "================================================================="
echo "Welcome to the Lua Converter!"
echo "This will help you to convert from raw lua files into compressed/encoded/compiled lub files."
echo "But you also can use uncompressed .lub files."
echo ""
echo "1. Move the file in the same folder or a sub-directory as this script and the Lua compiler."
echo "2. Use this script and follow the steps."
echo "3. Let the magic do it's thing and enjoy."
echo "================================================================="
pause_script

# Determine luac executable path
LUAC_ENV_VAR_NAME="LUAC_PATH" # Environment variable for luac path
luac_executable=""

# 1. Check Environment Variable
if [ -n "${!LUAC_ENV_VAR_NAME}" ]; then
    env_path="${!LUAC_ENV_VAR_NAME}"
    echo "Environment variable $LUAC_ENV_VAR_NAME found: '$env_path'"
    if [ -f "$env_path" ]; then
        if [ -x "$env_path" ]; then
            luac_executable="$env_path"
            echo "Using Lua compiler from environment variable: $luac_executable"
        else
            echo "Error: File specified by $LUAC_ENV_VAR_NAME ('$env_path') exists but is not executable."
            echo "Please check permissions."
            exit 1 # Exit if env var points to non-executable file
        fi
    else
         echo "Warning: File specified by $LUAC_ENV_VAR_NAME ('$env_path') not found."
         echo "         Falling back to default detection."
    fi
fi

# 2. Check local files and PATH (if env var not set or invalid)
if [ -z "$luac_executable" ]; then
    echo "Checking for local Lua compilers..."
    found_local=false
    # Prefer ./luac if it exists and runs correctly
    if [ -f "./luac" ]; then
        # Try executing; redirect output, check exit status
        ./luac -v > /dev/null 2>&1
        exit_status=$?
        # Check if exit status indicates successful execution (0) or known benign failure (like 1 for needing args)
        # Exclude critical errors like 126 (permission/format) and 127 (not found)
        if [[ $exit_status -ne 126 && $exit_status -ne 127 ]]; then
            echo "Using Lua compiler: ./luac"
            luac_executable="./luac"
            found_local=true
        else
            echo "./luac found but test execution failed (exit status: $exit_status). Might be incompatible format or permission issue."
        fi
    fi

    # If ./luac didn't work or doesn't exist, try ./luac.exe
    if ! $found_local && [ -f "./luac.exe" ]; then
        ./luac.exe -v > /dev/null 2>&1
        exit_status=$?
        if [[ $exit_status -ne 126 && $exit_status -ne 127 ]]; then
            echo "Using Lua compiler: ./luac.exe"
            luac_executable="./luac.exe"
            found_local=true
        else
             echo "./luac.exe found but test execution failed (exit status: $exit_status). Might be incompatible format or permission issue."
        fi
    fi

    # If neither local executable worked, check PATH
    if ! $found_local; then
        echo "No working local compiler found. Checking PATH..."
        if command -v luac &>/dev/null; then
            luac_executable="$(command -v luac)"
            echo "Using Lua compiler: $luac_executable (found in PATH)"
        else
            # Final error: Neither env var, local files, nor PATH yielded a usable luac
            echo "Error: Could not find a working Lua compiler ('luac' or 'luac.exe')."
            echo "Checked environment variable '$LUAC_ENV_VAR_NAME', local files ('./luac', './luac.exe'), and PATH."
            echo "Ensure a compatible version is available and executable."
            exit 1
        fi
    fi
fi

read -p "Please write the name of the sub-directory (leave it empty for none): " sub_directory
echo "================================================================="
read -p "Please write the file name (eg.: itemInfo): " file_basename
if [ -z "$file_basename" ]; then
    echo "File name cannot be empty. Exiting."
    exit 1
fi
echo "================================================================="
read -p "Please write the file's extension (eg.: .lua or lua): " file_extension
if [ -z "$file_extension" ]; then
    echo "File extension cannot be empty. Exiting."
    exit 1
fi

# Ensure extension starts with a dot if it doesn't have one and isn't empty
if [[ -n "$file_extension" && "${file_extension:0:1}" != "." ]]; then
    file_extension=".$file_extension"
fi

input_lua_file=""
output_lub_file="$file_basename.lub"

if [ -z "$sub_directory" ]; then
    input_lua_file="$file_basename$file_extension"
else
    # Remove trailing slash from sub_directory if present, then add one
    sub_directory_cleaned="${sub_directory%/}"
    input_lua_file="$sub_directory_cleaned/$file_basename$file_extension"
fi

if [ ! -f "$input_lua_file" ]; then
    echo "Error: Input file '$input_lua_file' not found. Exiting..."
    pause_script
    exit 1
fi

echo "Uncompressed File: $input_lua_file"

# Attempt to compile
"$luac_executable" -o "$output_lub_file" "$input_lua_file"

if [ $? -eq 0 ]; then
    echo "Successfully compiled to: $output_lub_file"
else
    echo "Error during compilation. '$output_lub_file' may not have been created or is invalid."
fi

pause_script
exit 0 