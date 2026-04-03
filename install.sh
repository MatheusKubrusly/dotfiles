#!/bin/bash

# --- Configuration ---
REPO_PATH="$HOME/Repositories/dotfiles"
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}[*] Initializing Aged Phosphor Deployment...${NC}"

# 1. Sync Submodules (Restores Trinity and other inherited repos)
echo "[*] Syncing submodules..."
cd "$REPO_PATH" || exit
git submodule update --init --recursive

# 2. Ensure target directories exist
mkdir -p ~/.config

# 3. Symlink Configuration Folders
echo "[*] Linking configuration directories..."
folders=("alacritty" "hypr" "waybar" "wofi" "swaync")

for folder in "${folders[@]}"; do
    ln -sfn "$REPO_PATH/$folder" "$HOME/.config/$folder"
done

# 4. Symlink Visual Assets (Themes & Icons)
echo "[*] Linking visual assets..."
ln -sfn "$REPO_PATH/.themes" "$HOME/.themes"
ln -sfn "$REPO_PATH/.icons"  "$HOME/.icons"

echo -e "${GREEN}[*] Deployment Complete. Systems operational.${NC}"
