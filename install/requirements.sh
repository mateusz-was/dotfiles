echo "\033[0;32m### Install git, curl, pip: Start ###\033[0m"

packages=("curl" "git" "python-pip")

if (cat /etc/os-release | grep -qi ubuntu); then
  sudo apt update
  sudo apt install -y $packages
fi
if (cat /etc/os-release | grep -qi centos); then
  sudo yum update
  sudo yum install -y $packages
fi
echo "\033[0;32m### Install  git, curl, pip: End ###\033[0m"
