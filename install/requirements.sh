echo "\033[0;32m### Install git, curl, pip: Start ###\033[0m"
if (cat /etc/os-release | grep -qi ubuntu); then
  set -x
  sudo apt update
  sudo apt install -y curl git python-pip
  set +x
fi
if (cat /etc/os-release | grep -qi centos); then
  sudo yum update
  sudo yum install -y curl git python-pip
fi
echo "\033[0;32m### Install  git, curl, pip: End ###\033[0m"
