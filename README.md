# Installation and running steps

**General Notes**
1. Ensure that the driver version for Nvidia is the same in Host and Docker. Otherwise graphics would not work. One would not be able to see the GUI of Gazebo or any other GUI from the docker.
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

**First steps**
* *PX4 repository download* Clone the PX4 repository in the sim_docker directory.
https://github.com/PX4/Firmware.git
* Build the docker image using the ./build.sh command in the sim_docker directory
* Run the docker by running the ./sitl.sh script in the same directory.
* When a new terminal is required to access the docker, one could run the ./term.sh script again from the same directory.



**TODO**
- [x] Create repo for simulation
- [ ] Remove run_sitl_in_docker.sh and make it part of run time.
- [x] Add Mesh from some test flights
- [ ] Auto-copy files from the custom_files folder to the Firmware directory before the start of the simulation.
- [ ] Create a pre-process script which downloads and sets-up the repository.

**Notes**
* typhoon_h480 model has a gimbal stabilised camera which has a resolution of 640x380. But for higher resolution there seems to be some extra effort required. More research.
