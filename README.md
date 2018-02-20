# sim_docker

**General Notes**
1. Ensure that the driver version for Nvidia is the same in Host and Docker. Otherwise graphics would not work.
      Check it after installation using "nvidia-smi" CLI if they are the same.
      

**Docker**
* Install docker and latest nvidia card drivers using the followign commands
* sudo add-apt-repository ppa:graphics-drivers
* sudo apt-get update
* sudo apt-get install nvidia-384
* sudo apt-get install     apt-transport-https     ca-certificates     curl     software-properties-common
* curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
* sudo apt-key fingerprint 0EBFCD88
* sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
* sudo apt-get update
* sudo apt-get install docker-ce




**TODO**
- [x] Create repo for simulation
- [ ] Remove run_sitl_in_docker.sh and make it part of run time.
- [ ] Add Mesh from some test flights
- [ ] Create a custom gazebo and ros package where all of the custom things would go.


