# installing ansible in Debian 9
apt-get -y update && apt-get -y upgrade

# Forcing install of older version of ansible that works with ansible-galaxy Debian9-CIS
apt-get install -y curl
apt-get install -y python3 python3-pip
pip3 install paramiko
pip3 install "ansible==2.7.0.0"

# Installs the most updated version of ansible 
# echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' >> /etc/apt/sources.list
# apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
#apt -y update
#apt install -y ansible

apt-get install -y git
ansible-galaxy install -p roles -r requirements.yml