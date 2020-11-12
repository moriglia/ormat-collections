ADD_PATH_SCRIPT_NAME ?= add_ormat_to_this_project

.PHONY: config

config: $(ADD_PATH_SCRIPT_NAME).m

$(ADD_PATH_SCRIPT_NAME).m : $(ADD_PATH_SCRIPT_NAME).cpp
	cpp -P -D OMDIR="\"`pwd`/\"" $< -o $@

clean:
	rm $(ADD_PATH_SCRIPT_NAME).m
