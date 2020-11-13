ADD_PATH_SCRIPT_NAME ?= add_ormat_to_this_project
TEST_DIR ?= test
TEST_SCRIPTS=$(patsubst %.mpp, %.m,$(shell find $(TEST_DIR)/test_*.mpp))
TEST_BOILERPLATE ?= tb.mpp

.PHONY: config test

config: $(ADD_PATH_SCRIPT_NAME).m

$(ADD_PATH_SCRIPT_NAME).m : $(ADD_PATH_SCRIPT_NAME).mpp
	cpp -P -D OMDIR="\"`pwd`/\"" $< -o $@

clean:
	rm -f $(ADD_PATH_SCRIPT_NAME).m
	rm -f $(TEST_SCRIPTS)

$(TEST_DIR)/test_%.m: $(TEST_DIR)/test_%.mpp
	cpp \
		-D TEST_NAME=test_$(*F) \
		-include $(TEST_DIR)/$(TEST_BOILERPLATE) \
		-P $< \
		-o $@

test: $(TEST_SCRIPTS)
