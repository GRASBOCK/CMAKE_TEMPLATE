# This makefile may be used to run the cmake system from this directory with minimal user input.
# Descriptions of the make commands are given at their respective definition.
# To call a specific make target type "make OPTION" or call the default with "make".

.PHONY: compile configure install uninstall clean

# define the install directory
CMAKE_INSTALL_PREFIX=$(HOME)/.local

# the default that is called, when no further arguments are passed to make
default: compile

# not relevant for the user. This option is there to assure a folder named build is created prior to compilation
build:
	$(MAKE) -s configure

# compiles the library and executables
compile: build
	(cd build && $(MAKE) -s)

# creates or updates the cmake build system
configure:
	mkdir -p build
	(cd build && cmake -DCMAKE_INSTALL_PREFIX=$(CMAKE_INSTALL_PREFIX) ..)

# installs the executables to the system
install: build
	(cd build && $(MAKE) -s install)

# uninstalls the executables from the system
uninstall:
	(cd build && $(MAKE) -s uninstall)

# cleans the compiled libraries and executables in the build folder
clean:
	(cd build && $(MAKE) -s clean)

# uninstall, clean and remove the build folder
purge: uninstall clean
	rm -rf build
