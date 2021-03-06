#!/usr/bin/env bash

printf "\n> Installing updates..."
sleep 2
sudo apt update -y
sudo apt upgrade -y
printf "\n> Updates installed."
sleep 2

printf "\n> Installing Docker..."
sleep 2
# Source: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update -y
sudo apt install docker-ce -y
sudo usermod -aG docker ${USER}
printf "\n> Docker installed."
docker --version
sleep 2

printf "\n> Installing Docker Compose..."
sleep 2
# Source: https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-18-04
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
printf "\n> Docker Compose installed."
docker-compose --version
sleep 2

printf "\n> Installing Git and Composer..."
sleep 2
# Source: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-composer-on-ubuntu-18-04
sudo apt install git php-cli php-mbstring unzip -y
curl -sS https://getcomposer.org/installer -o composer-setup.php
HASH=$(curl https://composer.github.io/installer.sig)
php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
printf "\n> Composer installed."
composer --version
sleep 2

printf "\n> Installing Node and NPM..."
sleep 2
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
# Use nvm without closing and then opening a new terminal
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install node
# Use node and npm immediately
source ~/.bashrc
printf "\n> Node and npm installed."
node --version
npm --version
sleep 2
