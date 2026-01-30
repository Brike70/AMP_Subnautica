#/bin/bash

echo "Get package file for DotNet Core"

wget https://packages.microsoft.com/config/debian/13/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

sudo dpkg -i packages-microsoft-prod.deb

rm packages-microsoft-prod.deb

echo "Update Package List"

sudo apt-get update

echo "Install DotNetCore"

sudo apt-get install -y dotnet-runtime-9.0
