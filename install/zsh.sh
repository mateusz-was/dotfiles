echo "\033[0;32m### Install zsh: Start ###\033[0m"
if (cat /etc/os-release | grep -qi ubuntu); then
  set -x
  sudo apt update
  sudo apt install -y zsh powerline fonts-powerline
  set +x
fi
if (cat /etc/os-release | grep -qi centos); then
  set -x
  sudo yum update
  sudo yum install -y zsh
  set +x
fi
echo "\033[0;32m### Install zsh: End ###\033[0m"

echo "\033[0;32m### Install oh-my-zsh: Start ###\033[0m"
./install/oh-my-zsh.sh
echo "\033[0;32m### Install oh-my-zsh: End ###\033[0m"

echo "Add powerline9k theme to oh-my-zsh"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo "Add zsh shell highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Install Nerd-fonts"
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git ~/.nerd-fonts
~/.nerd-fonts/install.sh Meslo

echo "Copy zshrc settings"
cp ../system/zshrc ~/.zshrc

echo "\033[0;32m### Change shell to zsh ###\033[0m"
sudo chsh -s /bin/zsh
