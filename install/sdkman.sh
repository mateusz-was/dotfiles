echo "\033[0;32m### Install SDKman: Start ###\033[0m"
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
echo "\033[0;32m### Install SDKman: End ###\033[0m"
