When creating new models for the copter do the following in the custom sitl_gazebo package which is in this repo. The path to this 
package is already included in the run_sitl_in_docker script.



create a copy of iris_opt_flow.world and name it iris_visual.world
create a copy of px4flow in the models folder and rename it to cam and all the details in the folder also needs to be renamed.
create a copy of iris_opt_flow in the models directory and rename it to iris_visual.

Clone the PX4/Firmware repo in this repo directory. Since this is excluded from the .gitignore file, it will not affect the git
pull/push commands.
Do the following changes in the Firmware repo.
create a copy of iris_opt_flow init file in Firmware/posix-configs/SITL/ekf2/ directory to iris_visual.
Every new vehicle model constructed must be included into this directory dependeing on the position estimator used, lpe/ekf2 etc.


Try with high power system since one core is always fully occupied and gives hard time sync errors.
