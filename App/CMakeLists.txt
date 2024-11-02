# App Project
cmake_minimum_required(VERSION 3.25)
project(App)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
file(GLOB_RECURSE SOURCE_LIST
   CONFIGURE_DEPENDS "Source/*.cpp"
   CONFIGURE_DEPENDS "Source/*.hpp"
   CONFIGURE_DEPENDS "Source/*.c"
   CONFIGURE_DEPENDS "Source/*.h"
)
add_executable(${PROJECT_NAME} ${SOURCE_LIST})
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${SOURCE_LIST})
add_subdirectory(../Core ../../Core/Binaries)
target_include_directories(${PROJECT_NAME} PRIVATE Source ../Core/Source)
target_link_libraries(${PROJECT_NAME} PRIVATE Core)

# App Dependencies
#find_package(example REQUIRED)
#target_link_libraries(${PROJECT_NAME} PRIVATE example)
