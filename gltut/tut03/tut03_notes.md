# tut 03 moving triangels
## Further Study
1. In VertCalcOffset.cpp, Increase --- elapsedTimeUniform --- by half of duration, then add another DrawArray
    ```C
        glUniform1f(elapsedTimeUniform, (glutGet(GLUT_ELAPSED_TIME) / 1000.0f)+2.5f);
        glDrawArrays(GL_TRIANGLES, 0, 3);
    ```
2. 
    1. Match fragLoopDuration and loopDuration in FragChangeColor.cpp
    2. Change "calcColor.frag":
        ```C
        	float currTime = mod(time, fragLoopDuration);
            float timeScale = 3.14159f * 1.0f / (fragLoopDuration);
            float currLerp = sin(currTime*timeScale);
            outputColor = mix(firstColor, secondColor, currLerp);
3.  
    1. add uniform attribute in FragPosition.frag
        ```C
            uniform float height;
        ```
    2. In FragPosition.cpp, update reshape function 
        ```C
        void reshape (int w, int h)
        {
            glUseProgram(theProgram);
            GLint heightUnf = glGetUniformLocation(theProgram, "height");
            glUniform1f(heightUnf, h);
            glUseProgram(0);
            glViewport(0, 0, (GLsizei) w, (GLsizei) h);
        }
        ```
