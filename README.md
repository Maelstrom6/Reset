# Reset

How to add this project to a fresh machine
```bash

sudo apt-get install git-all -y
git version  # Verify installation of git
cd Downloads/
git clone https://github.com/Maelstrom6/Reset.git
# Go to https://github.com/settings/tokens?type=beta and create a temporary token that can read the contents of this repo and use its value as your password

# Run the script
cd Reset/
bash main.bash

# Then install the nvidia drivers
bash nvidia.bash
```
