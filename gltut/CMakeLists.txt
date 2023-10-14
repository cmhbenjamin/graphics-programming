cmake_minimum_required(VERSION 3.0.0)
project(tut1_pratice VERSION 0.1.0 LANGUAGES C CXX)

set(OpenGL_GL_PREFERENCE GLVND)
find_package(OpenGL REQUIRED)

add_subdirectory(glsdk)
add_subdirectory(framework)

function(add_tutorial base_dir tgt_name)
    set(sources ${ARGN})
    list(TRANSFORM sources PREPEND "${base_dir}/")
    add_executable(${tgt_name} ${sources})
    target_link_libraries(${tgt_name} PRIVATE framework)
endfunction()

add_tutorial("tut01" "tut01" "tut1.cpp")