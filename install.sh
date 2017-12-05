chmod +x install/* system/sudoers install.sh
# Verify that your user will be able to do all the sudo actions
./system/sudoers
# Ensure basic packages exists
./install/requirements.sh

# Install packages
./install/git.sh
./install/zsh.sh

./install/ansible.sh
./install/atom.sh
./install/aws.sh
./install/docker.sh
./install/sdkman.sh

# TODO Add git configs
