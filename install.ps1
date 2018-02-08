Write-Host ">>> Installing packages" -ForegroundColor Magenta

$packages = @("Atom","7zip","firefox","winscp","git","curl",
"keepass","rawcap","winpcap","wireshark","jre8","jdk8",
"nodejs","jq","intellijidea-ultimate","docker-for-windows","docker-compose",
"vagrant","terraform","packer","python3","pip","awscli")

foreach ($package in $packages) {
    Write-Host ">>> $package" -ForegroundColor Magenta
    choco install -y $package
}

RefreshEnv
