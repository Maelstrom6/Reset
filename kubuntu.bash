# Change keyboard bindings
python3 change_keyboard_shortcut.py "Open system monitor" "gnome-system-monitor" "<Primary><Shift>Escape"



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

echo "Please add a new keyboard shortcut to run plasma-systemmonitor"
echo "Please pin the correct programs to the taskbar"
echo "Please set the clock to ISO format"
