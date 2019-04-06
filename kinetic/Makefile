.PHONY: all
all: ros-core/Dockerfile ros-core/ros_entrypoint.sh

.PHONY: clean
clean:
	rm ros-core/Dockerfile ros-core/ros_entrypoint.sh

ros-core/Dockerfile: ros-core/.template.Dockerfile bare/Dockerfile Makefile template.sh
	./template.sh < $< > $@

ros-core/ros_entrypoint.sh: bare/ros_entrypoint.sh
	cp $< $@
