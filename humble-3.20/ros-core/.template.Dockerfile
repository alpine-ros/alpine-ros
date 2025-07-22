# syntax = docker/dockerfile:1
@@IMPORT humble-3.20/bare/Dockerfile

RUN apk add --no-cache \
    py3-rosdep \
    py3-rosdistro \
  && rosdep init \
  && sed -i -e 's|ros/rosdistro/master|alpine-ros/rosdistro/alpine-custom-apk|' /etc/ros/rosdep/sources.list.d/20-default.list

RUN apk add --no-cache ros-humble-ros-core
