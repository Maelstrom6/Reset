#!/bin/bash

# Install various apps
sudo apt update
sudo apt upgrade

# cd ~/Downloads || exit

sudo bash brave.bash
sudo bash pycharm.bash
sudo bash vs_code.bash
sudo bash julia.bash
sudo bash python.bash

# Install vs code extensions
sudo bash extensions.bash

# julia
sudo julia update_julia.jl

# Change keyboard bindings
python3 change_keyboard_shortcut.py "Open system monitor" "gnome-system-monitor" "<Primary><Shift>Escape"

# Add brave, pycharm and vs code to favourites
# https://askubuntu.com/questions/1193496/add-app-to-favorites-from-command-line
# gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'appname.desktop']"
# ['brave-browser.desktop', 'org.gnome.Nautilus.desktop', 'pycharm-community_pycharm-community.desktop', 'code.desktop']
gsettings set org.gnome.shell favorite-apps "['brave-browser.desktop', 'org.gnome.Nautilus.desktop', 'pycharm-community_pycharm-community.desktop', 'code.desktop']"

# Dark mode
# https://askubuntu.com/questions/769417/how-to-change-global-dark-theme-on-and-off-through-terminal
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-blue-dark'
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

# Light mode
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita'

# Set the hostname
# sudo hostnamectl set-hostname tardis