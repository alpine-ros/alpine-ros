.PHONY: all
all: kinetic/ros-core/Dockerfile kinetic/ros-core/ros_entrypoint.sh

.PHONY: clean
clean:
	rm kinetic/ros-core/Dockerfile kinetic/ros-core/ros_entrypoint.sh

kinetic/ros-core/Dockerfile: kinetic/ros-core/.template.Dockerfile kinetic/bare/Dockerfile Makefile template.sh
	./template.sh < $< > $@

kinetic/ros-core/ros_entrypoint.sh: kinetic/bare/ros_entrypoint.sh
	cp $< $@
