echo "### Install Git: Start ###"
if (cat /etc/os-release | grep -qi ubuntu); then
  set -x
  sudo apt update
  sudo apt get -y curl git python-pip
  set +x
fi
if (cat /etc/os-release | grep -qi centos); then
  sudo yum update
  sudo yum install -y git python-pip
fi
echo "### Install Git: End ###"
