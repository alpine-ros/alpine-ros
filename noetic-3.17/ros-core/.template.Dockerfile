@@IMPORT noetic-3.17/bare/Dockerfile

RUN apk add --no-cache py3-rosdep \
  && rosdep init \
  && sed -i -e 's/ros\/rosdistro\/master/alpine-ros\/rosdistro\/alpine-custom-apk/' /etc/ros/rosdep/sources.list.d/20-default.list

RUN apk add --no-cache \
  py3-rosdistro\>=0.9.0 \
  ros-noetic-catkin\>=0.8.9 \
  ros-noetic-ros-core\>=1.5.0
