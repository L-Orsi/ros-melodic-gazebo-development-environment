# Author: Lucas Orsi 2020.
FROM osrf/ros:melodic-desktop-full
RUN echo "source "/opt/ros/$ROS_DISTRO/setup.bash >> ~/.bashrc
RUN mkdir -p ~/catkin_ws/src
CMD ['bin/bash']
