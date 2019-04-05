@@IMPORT bare/Dockerfile

RUN apk add --no-cache py2-rosdep \
  && rosdep init \
  && sed -i -e 's/ros\/rosdistro\/master/alpine-ros\/rosdistro\/alpine-custom-apk/' /etc/ros/rosdep/sources.list.d/20-default.list

RUN apk add --no-cache ros-kinetic-ros-core
