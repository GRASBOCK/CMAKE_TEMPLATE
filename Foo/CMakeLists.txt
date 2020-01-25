find_package(Eigen3 3.3 REQUIRED NO_MODULE)

add_executable(Foo foo.cc)
target_link_libraries(Foo AStruct Other)
target_include_directories(Foo PUBLIC
	${CMAKE_SOURCE_DIR}/shared
	${CMAKE_SOURCE_DIR}/other)
target_link_libraries(Foo Eigen3::Eigen)

install(TARGETS Foo
    RUNTIME DESTINATION bin)