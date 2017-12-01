echo "### Install Git: Start ###"
if (cat /etc/os-release | grep -qi ubuntu); then
  set -x
  sudo add-apt-repository ppa:git-core/ppa
  sudo apt-get update
  sudo apt-get install git
  set +x
fi
if (cat /etc/os-release | grep -qi centos); then
  sudo yum update
  sudo yum install -y git
fi
echo "### Install Git: End ###"
