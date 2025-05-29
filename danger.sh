#!/bin/bash
# DANGER STEGO TOOL
# GitHub: https://github.com/dangerbyte/stego-tool
# License: MIT

# [1;35m██╗  ██╗███████╗██╗  ██╗[0m
# [1;35m██║  ██║██╔════╝╚██╗██╔╝[0m
# [1;35m███████║█████╗   ╚███╔╝ [0m
# [1;35m██╔══██║██╔══╝   ██╔██╗ [0m
# [1;35m██║  ██║███████╗██╔╝ ██╗[0m
# [1;35m╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝[0m
#        [1;33mDANGER STEGO TOOL[0m

# ========= CONFIG ========= #
REPO_URL="https://github.com/dangerbyte/stego-tool"
LICENSE="MIT"
TOOL_NAME="Danger Stego Tool"

# ========= INSTALL DEPENDENCIES ========= #
echo -e "\n[+] Installing dependencies...\n"
pkg update -y && pkg install -y steghide

# ========= MAIN MENU ========= #
echo -e "\n[+] Welcome to $TOOL_NAME"
echo "1. Embed file into image"
echo "2. Extract file from image"
read -p "Enter your choice (1/2): " choice

if [ "$choice" == "1" ]; then
    read -p "Enter image filename: " image
    read -p "Enter file to embed: " file
    read -sp "Enter password (optional): " password
    echo
    if [ -z "$password" ]; then
        steghide embed -cf "$image" -ef "$file"
    else
        steghide embed -cf "$image" -ef "$file" -p "$password"
    fi
    echo "[+] File embedded successfully!"
elif [ "$choice" == "2" ]; then
    read -p "Enter stego image filename: " stego
    read -sp "Enter password (if any): " password
    echo
    if [ -z "$password" ]; then
        steghide extract -sf "$stego"
    else
        steghide extract -sf "$stego" -p "$password"
    fi
    echo "[+] File extracted successfully!"
else
    echo "[!] Invalid option."
fi
