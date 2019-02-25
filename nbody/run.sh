xhost +si:localuser:root

docker build -t nbody .
docker run --runtime=nvidia -ti --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix nbody
