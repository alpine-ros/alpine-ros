#!/bin/sh

set -e

if [ -f /usr/ros/${ROS_DISTRO}/setup.sh ]
then
  source /usr/ros/${ROS_DISTRO}/setup.sh
else
  echo "/usr/ros/${ROS_DISTRO}/setup.sh is not provided. \`apk add --no-cache ros-${ROS_DISTRO}-ros-workspace\` to setup."
fi

exec "$@"
