@@IMPORT noetic/bare/Dockerfile

RUN apk add --no-cache py3-rosdep \
  && rosdep init \
  && sed -i -e 's/ros\/rosdistro\/master/alpine-ros\/rosdistro\/alpine-custom-apk/' /etc/ros/rosdep/sources.list.d/20-default.list

RUN apk add --no-cache \
  ros-noetic-catkin>=0.8.9 \
  ros-noetic-ros-core>=1.5.0
