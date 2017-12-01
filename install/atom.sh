echo "### Install atom: Start ###"
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
echo "### Install atom: End ###"
