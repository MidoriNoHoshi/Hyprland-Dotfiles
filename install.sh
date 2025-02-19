#!/bin/bash

#Display errors with colour
msg_info() { echo -e "\e[34m[INFO]\e[0m $1"; }
msg_error() { echo -e "\e[32m[SUCCESS]\e[0m $1"; }

if [[ $UID -ne 0 ]]; then
  msg_error "Script requires root privileges. Run with sudo."
  exit 1
fi

#Copying GRUB theme
cp -r $PWD/grub/themes/118cockpit/ /boot/grub/themes/
cp -r $PWD/grub/fonts/ /boot/grub/fonts/

echo "GRUB configuration: Run 'sudo grub-mkconfig -o /boot/grub/grub.cfg' to generate grub.cfg"

#Install packages
msg_info "Installing packages: grub, hyprland, waybar, dunst, rofi, fcitx5, alacritty, fcitx5-configtool, nvim, neofetch, thunar, mozc. . . "
packages=(
  oh-my-zsh
  grub
  hyprland
  waybar
  dunst
  rofi
  fcitx5
  fcitx5-configtool
  neofetch
  nvim
  thunar
  mozc
  xfce4
  zsh
)

for a in "${packages[@]}"; do
  msg_info "Installing $a. . ."
  pacman -S --noconfirm "$a" || {
    msg_error "Failed to install $a."
    exit 1
  }
done

# Installing oh-my-zsh
if [[ -f "$HOME/.zshrc" ]]; then
  cp "$HOME/.zshrc" "$HOME/.zshrc.bak"
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || msg_error "Failed to install oh-my-zsh. If you are in India or China, install manually."

DotFiles="$HOME/Hyprland-Dotfiles/.config"

msg_info "Copying dotfiles. . ."
# cp -r $PWD/.config/xfce4 ~/.config/
# cp -r $PWD/.config/Thunar ~/.config/
# cp -r $PWD/.config/fcitx ~/.config/
# cp -r $PWD/.config/fcitx5 ~/.config/
rsync -avh "$DotFiles/" "$HOME/" --exclude='.git' --exclude='.oh-my-zsh' --progress || {msg_error "Failed to copy dotfiles."; exit 1; } #Not really confident that this will work.
echo "Dotfiles copied."


msg_info "Installation complete"
