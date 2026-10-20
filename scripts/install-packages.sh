#!/bin/bash

# --- 1. Define your packages ---
# Add or remove items here. The script will automatically decide whether to use pacman or yay.
PACKAGES=(
  # System Utilities/Dependencies
  "stow"
  "zoxide"
  "eza"
  "qemu"
  "starship"
  # GUI Apps
  "ghostty"
  "brave-origin-bin"
  "zed"
  "qbittorrent"
  "rog-control-center"
  "libreoffice-fresh"
  "localsend"
  "protonplus"
  "clamui"
  "lmstudio-bin"
  "zapzap"
  "z13gui-bin"
  # Themes/Fonts
  "ttf-google-sans"
  "ttf-google-sans-code-nf"
  "googledot-cursor-theme"
  "orchis-theme"
  "tela-circle-icon-theme-black"
  # Terminal Apps
  "lazygit"
  "superfile"
  "kotofetch"
  "unimatrix-git"
  "pokemon-colorscripts-git"
  "ookla-speedtest-bin"
  "toofan-bin"
  "vitetris"
  # GNOME Specific
  "gnome-music"
  "gnome-clocks"
  "gnome-calendar"
  "gnome-maps"
  "gnome-boxes"
  "extension-manager"
  "gdm-settings"
  "gradia"
  "refine"
)

# --- 2. Filter packages (Pacman vs AUR) ---
PACMAN_LIST=()
YAY_LIST=()

echo "Checking package repositories..."
for PKG in "${PACKAGES[@]}"; do
  if pacman -Si "$PKG" &>/dev/null; then
    PACMAN_LIST+=("$PKG")
  else
    YAY_LIST+=("$PKG")
  fi
done

# --- 3. Install Official Packages ---
# Using your requested command structure
echo "Installing official packages via pacman..."
sudo pacman -S "${PACMAN_LIST[@]}" --noconfirm --needed

# --- 4. Install AUR Packages ---
if [ ${#YAY_LIST[@]} -gt 0 ]; then
  echo "Installing AUR packages via yay..."
  yay -S "${YAY_LIST[@]}" --noconfirm --needed
fi

echo "Package Installation Complete!"
