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


## copy all data files to the build directory
file(COPY "data" DESTINATION "${CMAKE_BINARY_DIR}")
file(GLOB data_dirs "tut*/data")
foreach(data_dir ${data_dirs})
    file(COPY "${data_dir}" DESTINATION "${CMAKE_BINARY_DIR}")
endforeach()

#add_tutorial("tut01" "tut01" "tut1.cpp")

#add_tutorial("tut02" "tut02_frag_pos" "FragPosition.cpp")
#add_tutorial("tut02" "tut02_vertex_color" "VertexColors.cpp")


#add_tutorial("tut03" "Tut03CPUPositionOffset" "CPUPositionOffset.cpp")
#add_tutorial("tut03" "Tut03ShaderPositionOffset" "VertPositionOffset.cpp")
#add_tutorial("tut03" "Tut03ShaderCalcOffset" "VertCalcOffset.cpp")
#add_tutorial("tut03" "Tut03FragmentChangeColor" "FragChangeColor.cpp")

#add_tutorial("tut04" "Tut04OrthographicCube" "OrthoCube.cpp")
#add_tutorial("tut04" "Tut04ShaderPerspective" "ShaderPerspective.cpp")
#add_tutorial("tut04" "Tut04MatrixPerspective" "MatrixPerspective.cpp")
#add_tutorial("tut04" "Tut04AspectRatio" "AspectRatio.cpp")

#add_tutorial("tut05" "Tut05OverlapNoDepth" "OverlapNoDepth.cpp")
#add_tutorial("tut05" "Tut05BaseVertexWithOverlap" "BaseVertexOverlap.cpp")
#add_tutorial("tut05" "Tut05DepthBuffering" "DepthBuffer.cpp")
#add_tutorial("tut05" "Tut05VertexClipping" "VertexClipping.cpp")
#add_tutorial("tut05" "Tut05DepthClamping" "DepthClamping.cpp")
#add_tutorial("tut05" "Tut05DepthFighting" "DepthFighting.cpp")

add_tutorial("tut06" "Tut06Translation" "Translation.cpp")
add_tutorial("tut06" "Tut06Scale" "Scale.cpp")
add_tutorial("tut06" "Tut06Rotations" "Rotations.cpp")
add_tutorial("tut06" "Tut06Hierarchy" "Hierarchy.cpp")
add_tutorial("tut06" "Tut06Hierarchy_custom" "Hierarchy_custom.cpp")