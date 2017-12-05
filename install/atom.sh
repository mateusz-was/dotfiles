echo "\033[0;32m### Install atom: Start ###\033[0m"
if (cat /etc/os-release | grep -qi ubuntu); then
  set -x
  sudo apt-get install -y atom
  set +x
fi
if (cat /etc/os-release | grep -qi centos); then
  set -x
  sudo yum install -y atom
  set +x
fi
echo "\033[0;32m### Install atom: End ###\033[0m"
