echo "\033[0;32m### Install git, curl, pip: Start ###\033[0m"

packages=("curl" "git" "python-pip")

if (cat /etc/os-release | grep -qi ubuntu); then
  sudo snap install -y --classic code
  sudo snap install -y --classic intellij-idea-ultimate
fi
if (cat /etc/os-release | grep -qi centos); then
  echo "NOT DONE YET"
fi
echo "\033[0;32m### Install  git, curl, pip: End ###\033[0m"