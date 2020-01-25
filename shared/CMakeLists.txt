find_package(Eigen3 3.3 REQUIRED NO_MODULE)
add_library(AStruct A.cc)
target_link_libraries(AStruct Eigen3::Eigen)