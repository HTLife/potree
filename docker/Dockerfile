# docker build -f Dockerfile -t tseanliu/docker_env_gui:ubuntu20_potree .
FROM tseanliu/docker_env_gui:ubuntu20

RUN apt-get update && apt-get install -y \
    build-essential \
	python3-pip \
	git \
	libtbb-dev


RUN pip3 install cmake --upgrade

WORKDIR /home
# Install lastools
RUN git clone https://github.com/m-schuetz/LAStools.git 
RUN cd LAStools/LASzip && \
    mkdir build && \
	cd build && \
	cmake -DCMAKE_BUILD_TYPE=Release .. && \
	make install -j4

# Install PotreeConverter

RUN git clone https://github.com/potree/PotreeConverter.git

RUN cd PotreeConverter && \
    mkdir build && \
	cd build && \
	cmake -DCMAKE_BUILD_TYPE=Release \
	    -DLASZIP_INCLUDE_DIRS=/home/LAStools/LASzip/dll \
		-DLASZIP_LIBRARY=/home/LAStools/LASzip/build/src/liblaszip.so .. && \
	make -j4
