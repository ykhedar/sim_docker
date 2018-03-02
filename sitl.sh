# enable access to xhost from the container
xhost +

docker run -it --rm --privileged \
    -v `pwd`:/home/root/src:rw \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -e DISPLAY=:0 \
    -p 14556:14556/udp \
    --name=sitl_ankommen sitl:latest