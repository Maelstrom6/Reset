#!/bin/bash

# Current working directory should be the location of this file

# Install various apps
sudo apt update -y
sudo apt upgrade -y

# cd ~/Downloads || exit

sudo bash brave.bash
sudo bash pycharm.bash
sudo bash vs_code.bash
sudo bash julia.bash
sudo bash python.bash

# Install vs code extensions 
bash extensions.bash

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
# gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita'

# Set the hostname
# sudo hostnamectl set-hostname tardis

# Change icons for folders
# https://forums.linuxmint.com/viewtopic.php?t=352261
# gio set Folder -t string metadata::custom-icon file:///home/chris/Documents/icons/icons8-python-96.png

# Add the main folders in Documents
mkdir ~/Documents/PythonProjects/
mkdir ~/Documents/JuliaProjects/
mkdir ~/Documents/RustProjects/

cp -r icons/ ~/Pictures/

gio set ~/Documents/PythonProjects/ -t string metadata::custom-icon file:///home/chris/Pictures/icons/python.png
gio set ~/Documents/JuliaProjects/ -t string metadata::custom-icon file:///home/chris/Pictures/icons/julia.png
gio set ~/Documents/RustProjects/ -t string metadata::custom-icon file:///home/chris/Pictures/icons/rust_inverted.png

# Set nautilus settings
gsettings get org.gnome.nautilus.preferences show-hidden-files
gsettings get org.gtk.Settings.FileChooser show-hidden
gsettings get org.gnome.nautilus.preferences default-folder-viewer
gsettings get org.gtk.Settings.FileChooser sort-directories-first

gsettings set org.gnome.nautilus.preferences show-hidden-files true
gsettings set org.gtk.Settings.FileChooser show-hidden true
gsettings set org.gnome.nautilus.preferences default-folder-viewer "list-view"
gsettings set org.gtk.Settings.FileChooser sort-directories-first true
