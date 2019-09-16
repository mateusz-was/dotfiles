echo "\033[0;32m### Install SDKman: Start ###\033[0m"

curl -s "https://get.sdkman.io" | zsh
zsh -c ". $HOME/.sdkman/bin/sdkman-init.sh && sdk version"

sdk i maven
sdk i gradle
sdk i groovy

echo "\033[0;32m### Install SDKman: End ###\033[0m"
