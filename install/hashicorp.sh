echo "\033[0;32m### Install Packer: Start ###\033[0m"

wget https://releases.hashicorp.com/packer/1.4.3/packer_1.4.3_linux_amd64.zip
unzip packer*.zip
sudo mv packer /usr/bin
rm packer*

echo "\033[0;32m### Install Packer: End ###\033[0m"