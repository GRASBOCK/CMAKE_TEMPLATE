find_package(Eigen3 3.3 REQUIRED NO_MODULE)

add_executable(Bar bar.cc)
target_link_libraries(Bar AStruct Other)
target_include_directories(Bar PUBLIC
	${CMAKE_SOURCE_DIR})
target_link_libraries(Bar Eigen3::Eigen)

install(TARGETS Bar
    RUNTIME DESTINATION bin)