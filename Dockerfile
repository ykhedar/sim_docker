FROM px4io/px4-dev-ros:latest

MAINTAINER Yogesh Khedar (y.khedar@tu-bs.de)

COPY NVIDIA-Linux-x86_64-384.111.run /  

RUN apt update && apt install -y --no-install-recommends ros-kinetic-rqt-gui \
							  ros-kinetic-octomap-msgs \
							  ros-kinetic-rqt-gui-py \
							  ros-kinetic-octomap-ros \
							  google-glo* ros-kinetic-geographic-msgs \
							  ros-kinetic-mavros-msgs ros-kinetic-mavros \
							  ros-kinetic-rqt-* ros-kinetic-rviz-* python-pip \
							  && pip install numpy toml && rm -rf /var/lib/apt/lists/*

RUN apt update && apt install -y --no-install-recommends module-init-tools kmod && rm -rf /var/lib/apt/lists/*

RUN ./NVIDIA-Linux-x86_64-384.111.run -a -N --ui=none --no-kernel-module

COPY run_sitl_in_docker.sh /

ENTRYPOINT ["/run_sitl_in_docker.sh"]

CMD ["/bin/bash"]