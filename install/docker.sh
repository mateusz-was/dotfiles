echo "\033[0;32m### Install Docker: Start ###\033[0m"
if (cat /etc/os-release | grep -qi ubuntu); then
  set -x
  # Remove previous Docker packages
  sudo apt-get remove -y docker docker-engine docker.io
  # Update and install supporting packages
  sudo apt-get update
  sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
  # Add Docker gpg key
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  # Add Docker repository
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
  sudo apt-get update
  # Install Docker
  sudo apt-get install -y docker-ce
  # Check version
  docker -v
  # Add current user to docker group
  sudo usermod -aG docker $(whoami)
  echo "To use docker without sudo you need to re-log"
  # Run Docker daemon at startup
  sudo systemctl enable docker
  set +x
fi
echo "\033[0;32m### Install Docker: End ###\033[0m"

echo "\033[0;32m### Install Docker-compose: Start"
  sudo pip install -y docker-compose
echo "\033[0;32m### Install Docker-compose: End"

echo "\033[0;32m### Install Docker-compose completion: Start"
if (echo $SHELL | grep -qi bash); then
  sudo curl -L https://raw.githubusercontent.com/docker/compose/1.17.0/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose
fi
if (echo $SHELL | grep -qi zsh); then
  curl -L https://raw.githubusercontent.com/docker/compose/1.17.0/contrib/completion/zsh/_docker-compose > ~/.oh-my-zsh/plugins/docker-compose/_docker-compose
fi
echo "\033[0;32m### Install Docker-compose completion: End"
