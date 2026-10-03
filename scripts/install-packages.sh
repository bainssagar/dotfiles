#!/bin/bash

# --- 1. Define your packages ---
# Add or remove items here. The script will automatically decide whether to use pacman or yay.
PACKAGES=(
  "neovim"
  "ly"
  "lazygit"
  "stow"
  "yazi"
  "noctalia"
  "hyprland"
  "polkit"
  "hyprpicker"
  "hyprmod"
  "iio-hyprland-git"
  "wvkbd"
  "wlsunset"
  "matugen"
  "gpu-screen-recorder"
  "udiskie"
  "cava"
  "ghostty"
  "brave-origin-bin"
  "nautilus"
  "kotofetch"
  "galculator"
  "steam"
  "nwg-look"
  "qbittorrent"
  "rog-control-center"
  "papers"
  "loupe"
  "showtime"
  "zoxide"
  "eza"
  "unimatrix-git"
  "pokemon-colorscripts-git"
  "gnome-calendar"
  "gnome-clocks"
  "libreoffice-fresh"
  "localsend"
  "protonplus"
  "ttf-google-sans"
  "ttf-google-sans-code-nf"
  "googledot-cursor-theme"
  "orchis-theme"
  "tela-circle-icon-theme-black"
  "ookla-speedtest-bin"
  "clamav"
  "lmstudio-bin"
  "gimp"
  "toofan-bin"
  "blender"
  "zapzap"
  "vitetris"
  "virt-manager"
  "qemu"
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
