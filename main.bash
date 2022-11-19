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
