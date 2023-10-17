#version 330

smooth in vec4 theColor;

out vec4 outputColor;

uniform float screenHeight;
uniform float screenWidth;

float fit(float value, float min_in,float max_in, float min_out, float max_out)
{
	return min_out + (max_out - min_out) * ((value - min_in) / (max_in - min_in));
}
void main()
{
	// ramp from center of window
	// get size of window
	float min_length=screenWidth>screenHeight?screenHeight:screenWidth;
	float lerpValue = distance(vec2(screenWidth,screenHeight)/2.0,vec2(gl_FragCoord.x,gl_FragCoord.y));
	//normalize value
	lerpValue = fit(lerpValue,0,min_length*.25,1,0);
	outputColor = mix(theColor, vec4(0.0f, 0.0f, 0.0f, 1.0f), lerpValue);
}
