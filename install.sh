chmod +x install/* system/sudoers install.sh
# Verify that your user will be able to do all the sudo actions
./system/sudoers
# Ensure basic packages exists
./requirements.sh

# Install packages
./install/git.sh
./install/zsh.sh
zsh
source ~/.zshrc
