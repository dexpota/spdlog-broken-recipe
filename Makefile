WORKING_BUILD_DIR=working-build-dir
NOT_WORKING_BUILD_DIR=not-working-build-dir

not-working:
	CONAN_REVISIONS_ENABLED=1 conan install conanfile_not_working.txt -if=$(NOT_WORKING_BUILD_DIR) -u
	cmake -B $(NOT_WORKING_BUILD_DIR)
	cmake --build $(NOT_WORKING_BUILD_DIR)

working:
	CONAN_REVISIONS_ENABLED=1 conan install conanfile_working_spdlog.txt -if=$(WORKING_BUILD_DIR) -u
	cmake -B $(WORKING_BUILD_DIR)
	cmake --build $(WORKING_BUILD_DIR)