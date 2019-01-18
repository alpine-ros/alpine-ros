#!/bin/sh

set -e

source /usr/ros/${ROS_DISTRO}/setup.sh

exec "$@"
