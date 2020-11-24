CONTAINER_NAME=potree
IMAGE_NAME=tseanliu/docker_env_gui:ubuntu20_potree

docker run -d \
	--name=${CONTAINER_NAME} \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	${IMAGE_NAME} \
	/bin/sh -c "while true; do sleep 10; done"
