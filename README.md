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

**PX4 repository download**
* Clone the PX4 repository 
https://github.com/PX4/Firmware.git



**TODO**
- [x] Create repo for simulation
- [ ] Remove run_sitl_in_docker.sh and make it part of run time.
- [ ] Add Mesh from some test flights
- [ ] Create a custom gazebo and ros package where all of the custom things would go.


**Extra Infos**
* When creating new models for the copter do the following in the custom sitl_gazebo package which is in this repo. The path to this package is already included in the run_sitl_in_docker script.

* Create a copy of iris_opt_flow.world and name it iris_visual.world create a copy of px4flow in the models folder and rename it to cam and all the details in the folder also needs to be renamed. create a copy of iris_opt_flow in the models directory and rename it to iris_visual.

* Clone the PX4/Firmware repo in this repo directory. Since this is excluded from the .gitignore file, it will not affect the git pull/push commands. Do the following changes in the Firmware repo. create a copy of iris_opt_flow init file in Firmware/posix-configs/SITL/ekf2/ directory to iris_visual. Every new vehicle model constructed must be included into this directory dependeing on the position estimator used, lpe/ekf2 etc.

* Try with high power system since one core is always fully occupied and gives hard time sync errors.
