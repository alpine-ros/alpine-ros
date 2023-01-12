ROS_DISTROS ?= kinetic melodic noetic noetic-3.14 noetic-3.17
DOCKERFILES := $(addsuffix /ros-core/Dockerfile,$(ROS_DISTROS))
ENTRYPOINTS := $(addsuffix /ros-core/ros_entrypoint.sh,$(ROS_DISTROS))

.PHONY: all
all: $(DOCKERFILES)

.PHONY: clean
clean:
	rm $(DOCKERFILES) $(ENTRYPOINTS)

%/ros-core/Dockerfile: %/ros-core/.template.Dockerfile %/bare/Dockerfile Makefile template.sh
	./template.sh < $< > $@

%/ros-core/ros_entrypoint.sh: %/bare/ros_entrypoint.sh
	cp $< $@
