# Author: Lucas Orsi 2020.
if [ "$(docker ps -q -f name=ros-dev)" ]; then
    docker exec -it ros-dev bash -c '/bin/bash'
else
    xhost + # TODO: make this more restrictive.
    docker-compose up & sleep 5 && docker exec -it ros-dev bash -c '/bin/bash'
    docker-compose down
    xhost -
fi
