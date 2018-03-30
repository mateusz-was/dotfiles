echo "\033[0;32m### Install Git: Start ###\033[0m"
if (cat /etc/os-release | grep -qi ubuntu); then
  set -x
  sudo add-apt-repository -y ppa:git-core/ppa
  sudo apt-get update
  sudo apt-get install -y git
  set +x
fi
if (cat /etc/os-release | grep -qi centos); then
  sudo yum update
  sudo yum install -y git
fi

mkdir -p ~/.config/git
cp ~/dotfiles/git/gitconfig ~/.config/git/config
cp ~/dotfiles/git/gitignore ~/.config/git/ignore

echo "\033[0;32m### Install Git: End ###\033[0m"
