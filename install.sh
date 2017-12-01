chmod +x install/* system/sudoers
# Verify that your user will be able to do all the sudo actions
./system/sudoers

# Install packages
./install/git.sh
./install/zsh.sh
zsh
source ~/.zshrc
