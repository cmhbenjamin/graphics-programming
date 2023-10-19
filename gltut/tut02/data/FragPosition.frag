#version 330

out vec4 outputColor;
uniform float height;

void main()
{
	//float lerpValue = gl_FragCoord.y / 500.0f;
	float lerpValue = gl_FragCoord.y / height;
	//outputColor = mix(vec4(1.0f, 1.0f, 1.0f, 1.0f), vec4(0.2f, 0.2f, 0.2f, 1.0f), lerpValue);
	// reverse color
	//outputColor = mix(vec4(0.2f, 0.2f, 0.2f, 1.0f),vec4(1.0f, 1.0f, 1.0f, 1.0f), lerpValue);
	// change hue
	outputColor = mix(vec4(1.0f, 1.0f, 1.0f, 1.0f), vec4(0.2f, 1.0f, 1.0f, 1.0f), lerpValue);
}
