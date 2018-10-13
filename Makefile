#!/usr/bin/env make

DIRS := bin log

# Create corresponding DIR_% variables.
$(foreach d,$(DIRS),$(eval DIR_$(shell echo $d | tr '[:lower:]' '[:upper:]') := $d))

all: | $(DIRS)

$(DIRS):
	@[ -d $@ ] || mkdir -p $@

