lookandfeeltool -a org.kde.breezedark.desktop


kwriteconfig5 \
    --file ~/Documents/PythonProjects/.directory \
    --group 'Desktop Entry' \
    --key 'Icon' ~/Pictures/icons/python.png

kwriteconfig5 \
    --file ~/Documents/JuliaProjects/.directory \
    --group 'Desktop Entry' \
    --key 'Icon' ~/Pictures/icons/julia.png

kwriteconfig5 \
    --file ~/Documents/RustProjects/.directory \
    --group 'Desktop Entry' \
    --key 'Icon' ~/Pictures/icons/rust_inverted.png


# Show hidden files
kwriteconfig5 --file ~/.local/share/dolphin/view_properties/global/.directory --group Settings --key HiddenFilesShown false

# List view
kwriteconfig5 --file ~/.local/share/dolphin/view_properties/global/.directory --group Dolphin --key ViewMode 1
# Columns in list view
kwriteconfig5 --file ~/.local/share/dolphin/view_properties/global/.directory --group Dolphin --key VisibleRoles "CustomizedDetails,Details_text,Details_size,Details_modificationtime,Details_creationtime,Details_type,Details_permissions"

https://forum.kde.org/viewtopic.php?t=151477


# Keyboard shortcut
[Data_4]
Comment=Comment
Enabled=true
Name=OpenSysMon
Type=SIMPLE_ACTION_DATA

[Data_4Actions]
ActionsCount=1

[Data_4Actions0]
CommandURL=plasma-systemmonitor
Type=COMMAND_URL

[Data_4Conditions]
Comment=
ConditionsCount=0

[Data_4Triggers]
Comment=Simple_action
TriggersCount=1

[Data_4Triggers0]
Key=Ctrl+Shift+Esc
Type=SHORTCUT
Uuid={b67bbcdd-8e88-4fe2-9330-6e78eb6aabb9}






kwriteconfig5 --file dolphinrc --group General --key EditableUrl true
kwriteconfig5 --file dolphinrc --group General --key GlobalViewProps true
kwriteconfig5 --file dolphinrc --group General --key ShowFullPath true


https://github.com/shalva97/kde-configuration-files

chmod +x ~/Downloads/plasmasetconfig.py
./plasmasetconfig.py org.kde.plasma.digitalclock Appearance use24hFormat 2
# ./plasmasetconfig.py org.kde.plasma.icontasks General launchers "applications:systemsettings.desktop,applications:brave-browser.desktop,preferred://filemanager,applications:pycharm-community_pycharm-community.desktop,applications:code.desktop"


kwriteconfig5 --file ~/.local/share/dolphin/view_properties/global/.directory --group Settings --key HiddenFilesShown false

# Set background
plasma-apply-wallpaperimage "/home/chris/Pictures/Wallpapers/jelly.jpg"

look and feel(global theme): plasma-apply-lookandfeel "your favorite global theme"

color scheme: plasma-apply-colorscheme "your favorite color scheme"

cursor theme: plasma-apply-cursortheme "your favorite cursor"

desktop theme(plasma theme?): plasma-apply-desktoptheme "your favorite desktop theme"

bonus: accent color: plasma-apply-colorscheme --accent-color "svg color name or hex color code"

https://gist.github.com/Zren/764f17c26be4ea0e088f4a6a1871f528

kwriteconfig5 --file $HOME/.config/kscreenlockerrc --group "Greeter" --group "Wallpaper" --group "org.kde.image" --group "General" --key "Image" "file://$lock_screen_wallpaper"