# Reset

How to add this project to a fresh machine
```bash

sudo apt-get install git-all -y
git version  # Verify installation of git
git config --global user.email "christopherjonduplessis@gmail.com"
git config --global user.name "Chris du Plessis"
cd Downloads/
git clone https://github.com/Maelstrom6/Reset.git
# Go to https://github.com/settings/tokens?type=beta and create a temporary token that can read the contents of this repo and use its value as your password

# Run the script
cd Reset/
bash main.bash

# Then install the nvidia drivers
bash nvidia.bash
```

To do once done:
- Change display scaling
- Change mouse sensitivity
- Change sleep time
- Chrome smooth scrolling: https://askubuntu.com/questions/1350914/smooth-scroll-for-chrome
  - Type `brave://flags/` in the search bar
  - Search for "Smooth Scrolling" and Enable it


