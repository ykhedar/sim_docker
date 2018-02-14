# sim_docker
Note: Ensure that the driver version for Nvidia is the same in Host and Docker. Otherwise graphics would not work.
      Check it after installation using "nvidia-smi" CLI if they are the same.
      

# Docker
Install docker and latest nvidia card drivers using the followign commands
sudo add-apt-repository ppa:graphics-drivers
sudo apt-get update
sudo apt-get install nvidia-384
sudo apt-get install     apt-transport-https     ca-certificates     curl     software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce
