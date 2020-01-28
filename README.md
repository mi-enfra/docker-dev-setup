Setup Steps:
1. Install Ubuntu Server 18.04
2. `sudo apt update -y && sudo apt upgrade -y`
3. *(Optional)* Change hostname
    - https://linuxize.com/post/how-to-change-hostname-on-ubuntu-18-04/
    - `sudo hostnamectl set-hostname {{ new hostname }}`
    - `sudo nano /etc/hosts`
        - Change hostname to new one
    - `sudo nano /etc/cloud/cloud.cfg`
        - Set `preserve_hostname` to `true`