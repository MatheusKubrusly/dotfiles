# 📟 Aged Phosphor | Matheus Kubrusly's Dotfiles

> **SYSTEM STATUS:** OPERATIONAL  
> **AESTHETIC:** P1 PHOSPHOR (#32A852)  
> **ENVIRONMENT:** DEBIAN / HYPRLAND (WAYLAND)

This repository contains the core configuration for a low-level engineering environment. Optimized for hardware development, systems architecture, and maximum focus. Built for the **WolfByte (CEFET-RJ)** workflow.

## 🛠 Tech Stack
* **WM:** [Hyprland](https://hyprland.org/) (Dynamic Tiling)
* **Terminal:** Alacritty (Aged Phosphor Green)
* **Bar:** Waybar (Custom Battery/Net modules)
* **Launcher:** Wofi (Retro-styled dmenu)
* **Themes:** Trinity (Submodule) & Leafy Icons

## 🚀 Quick Deploy
To replicate this environment on a fresh Debian installation, execute the following commands:

```bash
# 1. Clone the repository with all submodules
git clone --recursive [https://github.com/YOUR_USER/dotfiles.git](https://github.com/YOUR_USER/dotfiles.git) ~/Repositories/dotfiles

# 2. Enter the directory
cd ~/Repositories/dotfiles

# 3. Run the automated installer
chmod +x install.sh
./install.sh
