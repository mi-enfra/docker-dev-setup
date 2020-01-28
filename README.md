Setup Steps:
1. Install Ubuntu Server 18.04
2. `sudo apt update -y && sudo apt upgrade -y`
3. *(Optional)* Change hostname
    - Source: https://linuxize.com/post/how-to-change-hostname-on-ubuntu-18-04/
    ```
    sudo hostnamectl set-hostname {{ new hostname }}
    sudo nano /etc/hosts`
        > Change hostname to new one
    sudo nano /etc/cloud/cloud.cfg
        > Set "preserve_hostname" to "true"
    ```
4. Install Docker
    - Source: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04
    ```
    sudo apt install apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
    sudo apt update
    sudo apt install docker-ce
    sudo usermod -aG docker ${USER}
    ```
5. Install Docker Compose
    - Source: https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-18-04
    ```
    sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    ```