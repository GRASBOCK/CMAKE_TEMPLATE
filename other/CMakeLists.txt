find_package(Eigen3 3.3 REQUIRED NO_MODULE)
add_library(Other B.cc)
target_link_libraries(Other Eigen3::Eigen)