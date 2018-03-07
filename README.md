# Installation and running steps

**Install Docker if not already installed**
* Follow the instructions on the docker web-site. 
or
* Run the script provided in scripts/ directory.


**First steps - Need to be done only during first time**
* Clone the PX4 repository in the sim_docker directory.

```bash
$ git clone https://github.com/PX4/Firmware.git
```
* Build the docker image using the ./build.sh command in the sim_docker directory
* Enter the docker image just built in the previous step in 'bash' mode by executing the command 
```bash
$ ./sitl.sh bash
```
* Now create the gazebo default target using the following commands
```bash
$ cd home/root/src/Firmware/
$ make posix_sitl_default gazebo
```
**Normal Usage** 
* Run the docker by running the ./sitl.sh script in the same directory.
* When a new terminal is required to access the docker, one could run the ./term.sh script again from the same directory.



**TODO**
- [x] Create repo for simulation
- [ ] Remove run_sitl_in_docker.sh and make it part of run time.
- [x] Add Mesh from some test flights
- [ ] Auto-copy files from the custom_files folder to the Firmware directory before the start of the simulation.
- [x] Create a pre-process script which downloads and sets-up the repository.

**Notes**
* Ensure that the driver version for Nvidia is the same in Host and Docker. Otherwise graphics would not work. One would not be able to see the GUI of Gazebo or any other GUI from the docker.
Check it after installation using "nvidia-smi" CLI if they are the same. One needs to install the nvidia driver from a different repository.

```bash
$ sudo add-apt-repository ppa:graphics-drivers
$ sudo apt-get update
$ sudo apt-get install nvidia-384
```

* typhoon_h480 model has a gimbal stabilised camera which has a resolution of 640x380. But for higher resolution there seems to be some extra effort required. More research.
      
