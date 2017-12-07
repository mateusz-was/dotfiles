echo "\033[0;32m### Install aws-ecs-cli: Start ###\033[0m"
sudo curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
sudo chmod +x /usr/local/bin/ecs-cli
ecs-cli --version
echo "\033[0;32m### Install aws-ecs-cli: End ###\033[0m"
