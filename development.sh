docker-compose up & sleep 5 && docker exec -it ros-dev bash -c 'echo "source "/opt/ros/$ROS_DISTRO/setup.bash >> ~/.bashrc && /bin/bash'
docker-compose down