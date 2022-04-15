
#!/bin/bash

# install docker ce on ubuntu-20.04
sudo apt-get remove docker docker-engine docker.io containerd runc


sudo apt-get update

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
	

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

# add user to docker group 
sudo groupadd docker

sudo usermod -aG docker $USER

# logout and login
# test
docker run hello-world
