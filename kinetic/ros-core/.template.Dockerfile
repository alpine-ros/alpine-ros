@@IMPORT kinetic/bare/Dockerfile

RUN apk add --no-cache py2-rosdep \
  && rosdep init \
  && sed -i -e 's|ros/rosdistro/master|alpine-ros/rosdistro/alpine-custom-apk|' /etc/ros/rosdep/sources.list.d/20-default.list

RUN apk add --no-cache \
  ros-kinetic-catkin\>=0.7.29 \
  ros-kinetic-ros-core\>=1.3.2
