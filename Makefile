.PHONY: all
all: firstlayers.stl topsandbottoms.stl 11xfirstlayers.stl 11xtopsandbottoms.stl

include $(wildcard *.deps)

%.stl: %.scad
	openscad -m make -o $@ -d $@.deps $<
