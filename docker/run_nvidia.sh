CONTAINER_NAME=potree
IMAGE_NAME=tseanliu/docker_env_gui:ubuntu20_potree

docker run --gpus all -d \
	--name=${CONTAINER_NAME} \
	--env="QT_X11_NO_MITSHM=1" \
	--env="DISPLAY" \
	--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
	--volume="$HOME/Downloads:/home/Downloads" \
	--volume="/mnt/data8t/docker_share/datasets:/home/datasets" \
	--volume="$HOME/.ssh:/root/.ssh" \
	${IMAGE_NAME} \
	/bin/sh -c "while true; do sleep 10; done"
