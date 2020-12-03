# ROS Melodic & Gazebo Docker Development Environment

## Description
Simple docker environment designed for small Ros and Gazebo projects, mainly for beginners. Supports working with GUI-dependent modules, thanks to sharing the host's screen with the containerized environment. This makes it ideal for playing around with `turtlesim` or running light `gazebo` simulations. 

Instructions below were written bearing in mind people with little to no docker experience, so if you don't fall in this category and just want to know what this repo is about, you can refer to the [For Experienced Docker Users](#For-Experienced-Docker-Users) section directly.

## Install Perquisites
- Linux host (tested in Ubuntu 18.04)
- Docker 
- docker-compose

## Instructions 
### Getting started
To get started simply run
```
. development.sh
```
This will open up a terminal where you can run ros commands. 
### Verification (optional)
To make sure everything works correctly you can try the following inside the new terminal.
```
rosrun turtlesim turtlesim_node
```
If a window opens up with a turtle, you're done! Everything worked properly.

### Using multiple terminals
Naturally, you'll often need to have many terminals attached to the same environment opened at the same time. This can be done by simply running the same command more than once
```
. development.sh
```
The trick here is that the script checks if the container is running. If it is, then it just attaches a new terminal to it, if it's not, it sets up the environment and attaches a terminal.

### Developing your own ROS package
In the terminal simply navigate to `~/catkin_ws`. This folder is mounted to the `catkin_ws` directory in the same directory where this README.md will get cloned. Any change inside any of both folders will get mirrored in the other. What does this mean? Many things, but the most important ones are:
- You can develop from your host machine using your favorite IDE, since changes done inside your host's `catkin_ws` folder cloned from this repo will replicate the changes inside the container. Then you can run ros commands inside the container terminal with the code you've developed from you host machine!
- Changes you make to you workspace will persist even after closing every single terminal opened using `development.sh`. So, in other words, this script helps you run your code, but development actually happens in your host machine.

### About Gazebo
Gazebo is available and no additional steps are required to make it work. Nevertheless, this simple environment does not provide graphic card support, so the complexity of the simulations that can be run using this environment is extremely limited.

### For Experienced Docker Users
A single container is launched by running `development.sh`. Running the command more than once will attach a new terminal to the same environment, so it's safe to re-run the script to open multiple sessions.
Some relevant features/points to take into account are:
- `catkin_ws` is bind mounted to the container's `catkin_ws` to ease host development.
- The screen is shared with the container, so GUI modules can be used.
- No graphics card support is featured.



