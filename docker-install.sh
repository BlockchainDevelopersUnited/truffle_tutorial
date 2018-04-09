#!/bin/bash
echo "Installing git"
apt install -y git
echo "Installing nano"
apt install -y nano
echo "Installing wget"
apt install -y wget
echo "Installing net-tools, need for ifconfig"
apt install -y net-tools
echo "Installing tmux"
apt install -y tmux
echo "Installing tmux"
apt install -y screen
echo "Installing vim"
apt install -y vim
echo "Installing curl"
apt install -y curl
echo "Installing nohup"
apt install -y nohup
echo "Installing sl"
apt install -y sl
echo "Installing cmatrix"
apt install -y cmatrix
echo "Installing python"
apt install -y python
echo "Installing htop, basically task manager for ubuntu"
apt install -y htop
echo "Installing build-essensial"
get install -y build-essential
echo "Installing nvm, node version manager"
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
echo "Installing --lts and using --lts for nvm"
nvm install --lts
nvm use --lts
npm install -g truffle
npm install -g ganache-cli
echo "Installing and running cloud 9"
git clone https://github.com/c9/core.git c9sdk
cd c9sdk
./scripts/install-sdk.sh
node ./server.js -p 3333 -a : -w ~
