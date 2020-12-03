# ROS Melodic & Gazebo Dockerized Development Environment

## Description
Super simple development environment aimed at small ros and gazebo projects development. Simply run `. development.sh` and a new terminal where ros commands can be freely run will open up. Running the script more than once will open new terminals attached to the same environment, so running the script multiple times allows users to have multiple terminals at the same time. Ros commands that require opening UI windows is supported, so for instance, `rosrun turtlesim turtlesim_node` will work out-of-the-box and so will `gazebo`. Note that running heavy _Gazebo_ simulations will not work as this minimalist docker environment does not use/mount any video driver. 


