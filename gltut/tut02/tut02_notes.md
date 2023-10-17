# tut02
vertex shaders handle geo vertex (world space) and 
Fragments shaders handles pixel (screen space)

Frag Coord use screenspace coord, relative to window.

## Further Study
1. By scaling up the y of fragPosition tutorial, more of the triangle become dark, since mix value get higher when gl_FraCoord increases. It turns completely dark when mix is greater than 1.

2. Tried creating a vignette effects in fragment shader:
    1. Find the screen size to get the center coordinate
        get window size in shader:
        https://community.khronos.org/t/window-size-in-glsl/57179/8
        1. create uniform attributes for windows size in shader
        2. get the screen size from program
        3. everytime reshape is ran, pass the screen size variable 
    2. Find distnace from center
        ```C
            distance(vec2(screenWidth,screenHeight)/2.0,vec2(gl_FragCoord.x,gl_FragCoord.y));
        ```
    3. remap the distance to 0-1, it seems GLSL doesn't have a function for this like fit in Houdini vex
        ```C
            float fit(float value, float min_in,float max_in, float min_out, float max_out)
            {
                return min_out + (max_out - min_out) * ((value - min_in) / (max_in - min_in));
            }
        ```
    4. use function mix to interpolate between the vertex color and black.

