#!/bin/bash
echo "[*] Deploying Matheus Kubrusly's Setup..."
mkdir -p ~/.config

# Automatically initialize and download all inherited repositories
git submodule update --init --recursive

ln -sfn ~/Repositories/dotfiles/alacritty ~/.config/
ln -sfn ~/Repositories/dotfiles/hypr ~/.config/
ln -sfn ~/Repositories/dotfiles/swaync ~/.config/
ln -sfn ~/Repositories/dotfiles/waybar ~/.config/
ln -sfn ~/Repositories/dotfiles/wofi ~/.config/
ln -sfn ~/Repositories/dotfiles/.themes ~/
ln -sfn ~/Repositories/dotfiles/.icons ~/

echo "[*] Deployment Complete!"
