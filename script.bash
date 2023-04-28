 #!/bin/bash       
 
# This is the script to install docker in you linux system

# updating the system packages
sudo apt update

# Install the necessary packages to allow apt to use a repository over HTTPS:
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to your system's APT sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update your system's package index again:
sudo apt-get update

# installing docker
sudo apt-get install docker-ce

# running hello world using docker
sudo docker run hello-world
