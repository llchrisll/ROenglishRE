#!/bin/bash

echo "================================================================="
echo "Welcome to the Lua Converter!"
echo "This will help you to convert from raw lua files into compressed/encoded/compiled lub files."
echo "But you also can use uncompressed .lub files."
echo
echo "1. Move the file in the same folder or a sub-directory as this script and luac."
echo "2. Use this script and follow the steps."
echo "3. Let the magic do it's thing and enjoy."
echo "================================================================="
read -p "Press enter to continue..."

read -p "Please write the name of the sub-directory (leave it empty for none): " sub
echo "================================================================="
read -p "Please write the file name (eg.: itemInfo): " file

if [ -z "$file" ]; then
    echo "No file name provided, exiting..."
    exit 1
fi

echo "================================================================="
read -p "Please write the file's extension (eg.: .lua): " ext

if [ -z "$ext" ]; then
    echo "No extension provided, exiting..."
    exit 1
fi

if [ -z "$sub" ]; then
    if [ ! -f "$file$ext" ]; then
        echo "File not found, exiting..."
        exit 1
    fi
    echo "Uncompressed File: $file$ext"
    ./bin/luac -o "$file.lub" "$file$ext"
else
    if [ ! -f "$sub/$file$ext" ]; then
        echo "File not found, exiting..."
        exit 1
    fi
    echo "Uncompressed File: $sub/$file$ext"
    ./bin/luac -o "$file.lub" "$sub/$file$ext"
fi

echo "Compressed File: $file.lub"
read -p "Press enter to exit..." 