cmake_minimum_required(VERSION 3.22)
project(Hello 
  VERSION 0.1.2.3 
  DESCRIPTION "Just experimenting with cmake."
  HOMEPAGE_URL "https://duckduckgo.com"
  LANGUAGES CXX)

#disable in-source builds
if (PROJECT_SOURCE_DIR STREQUAL PROJECT_BINARY_DIR)
  message(FATAL_ERROR "In-source builds are a bad idea")
endif()
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
# Don't use compiler specific extensions
set(CMAKE_CXX_EXTENSIONS OFF)

#project(Hello CXX) # don't need the LANGUAGES label unless other labels are used
add_executable(Hello hello.cpp)

# 'include' runs included file commands without adding a level of scope
include(print-project-vars.cmake)

#optional params are binary_dir and EXCLUDE_FROM_ALL
add_subdirectory(sub)
target_link_libraries(Hello PRIVATE sub)
