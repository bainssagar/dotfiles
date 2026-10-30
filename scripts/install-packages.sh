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
  "pass"
  "iio-sensor-proxy"
  "nvim"
  # GUI Apps
  "ghostty"
  "brave-origin-bin"
  "zed"
  "z13gui-plus-bin"
  "localsend"
  "protonplus"
  "libreoffice-fresh"
  "clamui"
  "lmstudio-bin"
  "zapzap"
  # Themes/Fonts
  "ttf-google-sans"
  "ttf-google-sans-code-vf"
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
  "gnome-clocks"
  "gnome-calendar"
  "gnome-weather"
  "gnome-maps"
  "gnome-boxes"
  "gnome-characters"
  "extension-manager"
  "gdm-settings"
  "amberol"
  "gradia"
  "refine"
  "fragments"
  "dialect"
  "impression"
  "secrets"
  "valuta"
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
