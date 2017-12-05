echo "\033[0;32m### Install Ansible: Start ###\033[0m"
if (cat /etc/os-release | grep -qi ubuntu); then
  set -x
  sudo apt-get update
  sudo apt-get install -y software-properties-common
  sudo apt-add-repository -y ppa:ansible/ansible
  sudo apt-get update
  sudo apt-get install -y ansible
  set +x
fi
if (cat /etc/os-release | grep -qi centos); then
  set -x
  sudo yum install -y epel-release
  sudo yum install -y ansible
  set +x
fi
echo "\033[0;32m### Install Ansible: End ###\033[0m"
