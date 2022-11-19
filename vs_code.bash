#!/bin/bash

# code --extensions-dir <dir>
#     Set the root path for extensions.
# code --list-extensions
#     List the installed extensions.
# code --show-versions
#     Show versions of installed extensions, when using --list-extension.
# code --install-extension (<extension-id> | <extension-vsix-path>)
#     Installs an extension.
# code --uninstall-extension (<extension-id> | <extension-vsix-path>)
#     Uninstalls an extension.
# code --enable-proposed-api (<extension-id>)
#     Enables proposed API features for extensions. Can receive one or more extension IDs to enable individually.


# https://www.tecmint.com/install-visual-studio-code-on-linux/
sudo apt install software-properties-common apt-transport-https
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update 
sudo apt install code

# install the extensions

# code

