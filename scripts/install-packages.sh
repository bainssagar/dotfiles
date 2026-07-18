#!/bin/bash

# --- 1. Define your packages ---
# Add or remove items here. The script will automatically decide whether to use pacman or yay.
PACKAGES=(
  "neovim"
  "git"
  "lazygit"
  "fzf"
  "stow"
  "yazi"
  "noctalia"
  "hyprpolkitagent"
  "hyprpicker"
  "hyprlauncher"
  "wlsunset"
  "satty"
  "udiskie"
  "cava"
  "ghostty"
  "brave-origin-bin"
  "nautilus"
  "balena-etcher"
  "btop"
  "nvtop"
  "fastfetch"
  "kotofetch"
  "galculator"
  "steam"
  "nwg-look"
  "obs-studio"
  "qbittorrent"
  "rog-control-center"
  "tetris-cli"
  "snake"
  "papers"
  "loupe"
  "amberol"
  "showtime"
  "zoxide"
  "eza"
  "unimatrix-git"
  "pokemon-colorscripts-git"
  "gnome-calendar"
  "gnome-clocks"
  "gnome-tweaks"
  "libreoffice-fresh"
  "localsend"
  "sddm-silent-theme"
  "protonplus"
  "ttf-google-sans"
  "ttf-google-sans-code-nf"
  "bibata-cursor-theme-bin"
  "orchis-theme"
  "tela-circle-icon-theme-black"
  "speedtest-cli"
  "clamav"
  "lmstudio-bin"
  "picard"
  "photogimp"
  "toofan-bin"
  "blender"
  "zigoku"
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
