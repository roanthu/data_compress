cmake_minimum_required(VERSION 3.14)
project(data_compress)

set(CMAKE_CXX_STANDARD 14)

add_executable(data_compress main.cpp)

target_link_libraries(data_compress PRIVATE lz4)
target_include_directories(data_compress PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/ext/lz4/lib)


add_executable(zstd_test zstd_test.cpp)
add_library(zstd STATIC IMPORTED)
set_target_properties(zstd PROPERTIES
        IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/ext/zstd/lib/libzstd.a)
set_target_properties(zstd PROPERTIES LINKER_LANGUAGE C)
target_link_libraries(zstd INTERFACE -lpthread)
target_link_libraries(zstd_test zstd)
target_include_directories(zstd_test PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/ext/zstd/lib/)
