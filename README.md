# Alpine ROS Docker Images
Docker image of ROS (Robot Operating System) on Alpine Linux

## News
### July 2025
`noetic-3.17` and `humble-3.17` (Alpine 3.17 EOL on Nov 2024) are dropped. The corresponding images are still available but no longer updated.
It is highly recommended to update to `noetic-3.20`, `humble-3.20` or `jazzy-3.20`.

### July 2025
`humble-3.20` is added.

### April 2025
`jazzy-3.20` is added.

### July 2024
`noetic-3.20` is added.
Since `noetic-3.20`, development files and dependencies are split into `-dev` subpackages.
Users can remove `-dev` packages by `apk add !ros-dev`.

### January 2024
`noetic-3.14` (Alpine 3.14 EOL on May 2023) is dropped. The corresponding images are still available but no longer updated.
It is highly recommended to update to `noetic-3.17`.

### May 2023
ROS2 humble is now available for Alpine 3.17 as `humble-3.17`.

### April 2023
`melodic` (Melodic EOL on May 2023) and `noetic-3.11` (Alpine 3.11 EOL on May 2020) are dropped.
These images are still available but no longer updated. It is highly recommended to update to `noetic-3.14` or `noetic-3.17`.

## Registry
Images are available on GitHub Container Registry
```
docker pull ghcr.io/alpine-ros/alpine-ros:noetic-3.17-bare
docker pull ghcr.io/alpine-ros/alpine-ros:noetic-3.17-ros-core
```

## Demo
Basic pub/sub using alpine-ros. You can run below `docker-compose.yml` by `docker compose up`.
### ROS 1
```docker-compose.yml
# docker-compose.yml
services:
  roscore:
    image: ghcr.io/alpine-ros/alpine-ros:noetic-3.17-ros-core
    command: "roscore"
  pub:
    image: ghcr.io/alpine-ros/alpine-ros:noetic-3.17-ros-core
    command: "sh -c \"sleep 1s && rostopic pub -r 1 /test std_msgs/String \"hello\" \""
    environment:
      ROS_MASTER_URI: "http://roscore:11311"
  sub:
    image: ghcr.io/alpine-ros/alpine-ros:noetic-3.17-ros-core
    command: "sh -c \"sleep 1s && rostopic echo /test\""
    environment:
      ROS_MASTER_URI: "http://roscore:11311"
```

### ROS 2
```docker-compose.yml
# docker-compose.yml
services:
  pub:
    image: ghcr.io/alpine-ros/alpine-ros:humble-3.17-ros-core
    command: "ros2 topic pub -r 1 /test std_msgs/msg/String \"data: hello\" "
  sub:
    image: ghcr.io/alpine-ros/alpine-ros:humble-3.17-ros-core
    command: "sh -c \"sleep 1s && ros2 topic echo /test\""
```
