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
sudo bash virtualbox.bash

# Install vs code extensions 
bash extensions.bash
python3 vs_code_theme.py

# julia
sudo julia update_julia.jl

# Add the main folders in Documents
mkdir ~/Documents/PythonProjects/
mkdir ~/Documents/JuliaProjects/
mkdir ~/Documents/RustProjects/
cp -r icons/ ~/Pictures/
cp -r wallpapers/ ~/Pictures/


distro="kubuntu"

if [ $distro = "ubuntu" ]
then
    sudo bash ubuntu.bash

elif [ $distro = "kubuntu" ]
then 
    sudo bash kubuntu.bash
    
else 
    echo "Please choose a valid distribution"
fi
