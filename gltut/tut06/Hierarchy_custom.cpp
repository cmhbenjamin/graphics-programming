#include <string>
#include <vector>
#include <stack>
#include <math.h>
#include <stdio.h>
#include <glload/gl_3_3.h>
#include <GL/freeglut.h>
#include "../framework/framework.h"
#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#define ARRAY_COUNT( array ) (sizeof( array ) / (sizeof( array[0] ) * (sizeof( array ) != sizeof(void*) || sizeof( array[0] ) <= sizeof(void*))))

GLuint theProgram;
GLuint positionAttrib;
GLuint colorAttrib;

GLuint modelToCameraMatrixUnif;
GLuint cameraToClipMatrixUnif;

glm::mat4 cameraToClipMatrix(0.0f);

float CalcFrustumScale(float fFovDeg)
{
	const float degToRad = 3.14159f * 2.0f / 360.0f;
	float fFovRad = fFovDeg * degToRad;
	return 1.0f / tan(fFovRad / 2.0f);
}

const float fFrustumScale = CalcFrustumScale(45.0f);

void InitializeProgram()
{
	std::vector<GLuint> shaderList;

	shaderList.push_back(Framework::LoadShader(GL_VERTEX_SHADER, "PosColorLocalTransform.vert"));
	shaderList.push_back(Framework::LoadShader(GL_FRAGMENT_SHADER, "ColorPassthrough.frag"));

	theProgram = Framework::CreateProgram(shaderList);

	positionAttrib = glGetAttribLocation(theProgram, "position");
	colorAttrib = glGetAttribLocation(theProgram, "color");

	modelToCameraMatrixUnif = glGetUniformLocation(theProgram, "modelToCameraMatrix");
	cameraToClipMatrixUnif = glGetUniformLocation(theProgram, "cameraToClipMatrix");

	float fzNear = 1.0f; float fzFar = 100.0f;

	cameraToClipMatrix[0].x = fFrustumScale;
	cameraToClipMatrix[1].y = fFrustumScale;
	cameraToClipMatrix[2].z = (fzFar + fzNear) / (fzNear - fzFar);
	cameraToClipMatrix[2].w = -1.0f;
	cameraToClipMatrix[3].z = (2 * fzFar * fzNear) / (fzNear - fzFar);

	glUseProgram(theProgram);
	glUniformMatrix4fv(cameraToClipMatrixUnif, 1, GL_FALSE, glm::value_ptr(cameraToClipMatrix));
	glUseProgram(0);
}

const int numberOfVertices = 24;

#define RED_COLOR 1.0f, 0.0f, 0.0f, 1.0f
#define GREEN_COLOR 0.0f, 1.0f, 0.0f, 1.0f
#define BLUE_COLOR 	0.0f, 0.0f, 1.0f, 1.0f

#define YELLOW_COLOR 1.0f, 1.0f, 0.0f, 1.0f
#define CYAN_COLOR 0.0f, 1.0f, 1.0f, 1.0f
#define MAGENTA_COLOR 	1.0f, 0.0f, 1.0f, 1.0f

const float vertexData[] =
{
	//Front
	+1.0f, +1.0f, +1.0f,
	+1.0f, -1.0f, +1.0f,
	-1.0f, -1.0f, +1.0f,
	-1.0f, +1.0f, +1.0f,

	//Top
	+1.0f, +1.0f, +1.0f,
	-1.0f, +1.0f, +1.0f,
	-1.0f, +1.0f, -1.0f,
	+1.0f, +1.0f, -1.0f,

	//Left
	+1.0f, +1.0f, +1.0f,
	+1.0f, +1.0f, -1.0f,
	+1.0f, -1.0f, -1.0f,
	+1.0f, -1.0f, +1.0f,

	//Back
	+1.0f, +1.0f, -1.0f,
	-1.0f, +1.0f, -1.0f,
	-1.0f, -1.0f, -1.0f,
	+1.0f, -1.0f, -1.0f,

	//Bottom
	+1.0f, -1.0f, +1.0f,
	+1.0f, -1.0f, -1.0f,
	-1.0f, -1.0f, -1.0f,
	-1.0f, -1.0f, +1.0f,

	//Right
	-1.0f, +1.0f, +1.0f,
	-1.0f, -1.0f, +1.0f,
	-1.0f, -1.0f, -1.0f,
	-1.0f, +1.0f, -1.0f,


	GREEN_COLOR,
	GREEN_COLOR,
	GREEN_COLOR,
	GREEN_COLOR,

	BLUE_COLOR,
	BLUE_COLOR,
	BLUE_COLOR,
	BLUE_COLOR,

	RED_COLOR,
	RED_COLOR,
	RED_COLOR,
	RED_COLOR,

	YELLOW_COLOR,
	YELLOW_COLOR,
	YELLOW_COLOR,
	YELLOW_COLOR,

	CYAN_COLOR,
	CYAN_COLOR,
	CYAN_COLOR,
	CYAN_COLOR,

	MAGENTA_COLOR,
	MAGENTA_COLOR,
	MAGENTA_COLOR,
	MAGENTA_COLOR,
};

const GLshort indexData[] =
{
	0, 1, 2,
	2, 3, 0,

	4, 5, 6,
	6, 7, 4,

	8, 9, 10,
	10, 11, 8,

	12, 13, 14,
	14, 15, 12,

	16, 17, 18,
	18, 19, 16,

	20, 21, 22,
	22, 23, 20,
};

GLuint vertexBufferObject;
GLuint indexBufferObject;
GLuint vao;

void InitializeVAO()
{
	glGenBuffers(1, &vertexBufferObject);

	glBindBuffer(GL_ARRAY_BUFFER, vertexBufferObject);
	glBufferData(GL_ARRAY_BUFFER, sizeof(vertexData), vertexData, GL_STATIC_DRAW);
	glBindBuffer(GL_ARRAY_BUFFER, 0);

	glGenBuffers(1, &indexBufferObject);

	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, indexBufferObject);
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indexData), indexData, GL_STATIC_DRAW);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);

	glGenVertexArrays(1, &vao);
	glBindVertexArray(vao);

	size_t colorDataOffset = sizeof(float) * 3 * numberOfVertices;
	glBindBuffer(GL_ARRAY_BUFFER, vertexBufferObject);
	glEnableVertexAttribArray(positionAttrib);
	glEnableVertexAttribArray(colorAttrib);
	glVertexAttribPointer(positionAttrib, 3, GL_FLOAT, GL_FALSE, 0, 0);
	glVertexAttribPointer(colorAttrib, 4, GL_FLOAT, GL_FALSE, 0, (void*)colorDataOffset);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, indexBufferObject);

	glBindVertexArray(0);
}

inline float DegToRad(float fAngDeg)
{
	const float fDegToRad = 3.14159f * 2.0f / 360.0f;
	return fAngDeg * fDegToRad;
}

inline float Clamp(float fValue, float fMinValue, float fMaxValue)
{
	if(fValue < fMinValue)
		return fMinValue;

	if(fValue > fMaxValue)
		return fMaxValue;

	return fValue;
}

glm::mat3 RotateX(float fAngDeg)
{
	float fAngRad = DegToRad(fAngDeg);
	float fCos = cosf(fAngRad);
	float fSin = sinf(fAngRad);

	glm::mat3 theMat(1.0f);
	theMat[1].y = fCos; theMat[2].y = -fSin;
	theMat[1].z = fSin; theMat[2].z = fCos;
	return theMat;
}

glm::mat3 RotateY(float fAngDeg)
{
	float fAngRad = DegToRad(fAngDeg);
	float fCos = cosf(fAngRad);
	float fSin = sinf(fAngRad);

	glm::mat3 theMat(1.0f);
	theMat[0].x = fCos; theMat[2].x = fSin;
	theMat[0].z = -fSin; theMat[2].z = fCos;
	return theMat;
}

glm::mat3 RotateZ(float fAngDeg)
{
	float fAngRad = DegToRad(fAngDeg);
	float fCos = cosf(fAngRad);
	float fSin = sinf(fAngRad);

	glm::mat3 theMat(1.0f);
	theMat[0].x = fCos; theMat[1].x = -fSin;
	theMat[0].y = fSin; theMat[1].y = fCos;
	return theMat;
}

class MatrixStack
{
public:
	MatrixStack()
		: m_currMat(1.0f)
	{
	}

	const glm::mat4 &Top()
	{
		return m_currMat;
	}

	void RotateX(float fAngDeg)
	{
		m_currMat = m_currMat * glm::mat4(::RotateX(fAngDeg));
	}

	void RotateY(float fAngDeg)
	{
		m_currMat = m_currMat * glm::mat4(::RotateY(fAngDeg));
	}

	void RotateZ(float fAngDeg)
	{
		m_currMat = m_currMat * glm::mat4(::RotateZ(fAngDeg));
	}

	void Scale(const glm::vec3 &scaleVec)
	{
		glm::mat4 scaleMat(1.0f);
		scaleMat[0].x = scaleVec.x;
		scaleMat[1].y = scaleVec.y;
		scaleMat[2].z = scaleVec.z;

		m_currMat = m_currMat * scaleMat;
	}

	void Translate(const glm::vec3 &offsetVec)
	{
		glm::mat4 translateMat(1.0f);
		translateMat[3] = glm::vec4(offsetVec, 1.0f);

		m_currMat = m_currMat * translateMat;
	}

	void Push()
	{
		m_matrices.push(m_currMat);
	}

	void Pop()
	{
		m_currMat = m_matrices.top();
		m_matrices.pop();
	}

private:
	glm::mat4 m_currMat;
	std::stack<glm::mat4> m_matrices;
};

#define STANDARD_ANGLE_INCREMENT 11.25f
#define SMALL_ANGLE_INCREMENT 9.0f


// custom node 

#include <typeinfo>
#include <iostream>
class GeoNode
{
public:
	GeoNode* parent;
	std::vector<GeoNode*> children;

	void drawTree(MatrixStack &modelToCameraStack)
	{
		transform(modelToCameraStack);
		draw(modelToCameraStack);
		modelToCameraStack.Push();
		for(auto &g:children)
		{
			//std::cout<<typeid(*g).name();
			g->drawTree(modelToCameraStack);
		}
		modelToCameraStack.Pop();
	}
	void writePose()
	{
		write();
		for(auto &g:children)
		{
			g->writePose();
		}
	}
protected:
	
	virtual void draw(MatrixStack &modelToCameraStack){};
	virtual void transform(MatrixStack &modelToCameraStack){};
	virtual void write(){};
};


//transform only node
class TranNode:public GeoNode
{
private:
};

//Rectangle
class RecNode:public GeoNode
{
public:
	RecNode(glm::vec3 size, glm::vec3 origin)
	{
		size = size;
		origin = origin;
	}
	RecNode()
	{
		size = glm::vec3(0,0,0);
		origin = glm::vec3(0,0,0);
	}
protected:
	void draw(MatrixStack &modelToCameraStack)
		{
			glUseProgram(theProgram);
			glBindVertexArray(vao);
			modelToCameraStack.Push();
			modelToCameraStack.Translate(origin);
			modelToCameraStack.Scale(size);
			glUniformMatrix4fv(modelToCameraMatrixUnif, 1, GL_FALSE, glm::value_ptr(modelToCameraStack.Top()));
			glDrawElements(GL_TRIANGLES, ARRAY_COUNT(indexData), GL_UNSIGNED_SHORT, 0);
			modelToCameraStack.Pop();
			glBindVertexArray(0);
			glUseProgram(0);
		}
protected:
	glm::vec3 size;
	glm::vec3 origin;
};

class Base: public GeoNode
{
public:
	Base()
		: posBase(glm::vec3(3.0f, -5.0f, -40.0f))
		, angBase(-45.0f)
	{}
	void adjBase(bool bIncrement)
	{
		angBase += bIncrement ? STANDARD_ANGLE_INCREMENT : -STANDARD_ANGLE_INCREMENT;
		angBase = fmodf(angBase, 360.0f);
	}
private:
	void transform(MatrixStack &modelToCameraStack)
	{
		modelToCameraStack.Translate(posBase);
		modelToCameraStack.RotateY(angBase);
	}
	void write()
	{
		printf("angBase:\t%f\n", angBase);
	}
	glm::vec3 posBase;
	float angBase;
};

class BaseLeft: public RecNode
{
public:
	BaseLeft()
		: posBaseLeft(glm::vec3(2.0f, 0.0f, 0.0f))
		, scaleBaseZ(3.0f)
		{
			origin = posBaseLeft;
			size = glm::vec3(1.0f,1.0f,scaleBaseZ);
		}

private:
	glm::vec3 posBaseLeft;
	float scaleBaseZ;
};

class BaseRight: public RecNode
{
public:
	BaseRight():
		posBaseRight(glm::vec3(-2.0f, 0.0f, 0.0f))
		, scaleBaseZ(3.0f)
		{
			origin = posBaseRight;
			size = glm::vec3(1.0f,1.0f,scaleBaseZ);
		}

private:
	glm::vec3 posBaseRight;
	float scaleBaseZ;
};

class UpperArm: public RecNode
{
public:
	UpperArm()
		: angUpperArm(-33.75f)
		, sizeUpperArm(9.0f)
	{
		origin = glm::vec3(0.0f, 0.0f, (sizeUpperArm / 2.0f) - 1.0f);
		size = glm::vec3(glm::vec3(1.0f, 1.0f, sizeUpperArm / 2.0f));
	}
	void AdjUpperArm(bool bIncrement)
	{
		angUpperArm += bIncrement ? STANDARD_ANGLE_INCREMENT : -STANDARD_ANGLE_INCREMENT;
		angUpperArm = Clamp(angUpperArm, -90.0f, 0.0f);
	}

private:
	void transform(MatrixStack &modelToCameraStack)
	{
		modelToCameraStack.RotateX(angUpperArm);
	}
	float angUpperArm;
	float sizeUpperArm;
};

/*

class UpperArm:public GeoNode
{
public:
	UpperArm():
		angUpperArm(-33.75f)
		, sizeUpperArm(9.0f)
	{}
	void AdjUpperArm(bool bIncrement)
	{
		angUpperArm += bIncrement ? STANDARD_ANGLE_INCREMENT : -STANDARD_ANGLE_INCREMENT;
		angUpperArm = Clamp(angUpperArm, -90.0f, 0.0f);
	}
private:
	void draw(MatrixStack &modelToCameraStack)
	{
		glUseProgram(theProgram);
		glBindVertexArray(vao);


		modelToCameraStack.RotateX(angUpperArm);

		{
			modelToCameraStack.Push();
			modelToCameraStack.Translate(glm::vec3(0.0f, 0.0f, (sizeUpperArm / 2.0f) - 1.0f));
			modelToCameraStack.Scale(glm::vec3(1.0f, 1.0f, sizeUpperArm / 2.0f));
			glUniformMatrix4fv(modelToCameraMatrixUnif, 1, GL_FALSE, glm::value_ptr(modelToCameraStack.Top()));
			glDrawElements(GL_TRIANGLES, ARRAY_COUNT(indexData), GL_UNSIGNED_SHORT, 0);
			modelToCameraStack.Pop();
		}


		glBindVertexArray(0);
		glUseProgram(0);
	}
	void write(){
		printf("angUpperArm:\t%f\n", angUpperArm);
	}
	float angUpperArm;
	float sizeUpperArm;

};


class LowerArm:public GeoNode
{
public:
	LowerArm():
		posLowerArm(glm::vec3(0.0f, 0.0f, 8.0f))
		, angLowerArm(146.25f)
		, lenLowerArm(5.0f)
		, widthLowerArm(1.5f)
	{}
	void AdjLowerArm(bool bIncrement)
	{
		angLowerArm += bIncrement ? STANDARD_ANGLE_INCREMENT : -STANDARD_ANGLE_INCREMENT;
		angLowerArm = Clamp(angLowerArm, 0.0f, 146.25f);
	}
private:
	void draw(MatrixStack &modelToCameraStack)
	{
		glUseProgram(theProgram);
		glBindVertexArray(vao);


		modelToCameraStack.Translate(posLowerArm);
		modelToCameraStack.RotateX(angLowerArm);

		modelToCameraStack.Push();
		modelToCameraStack.Translate(glm::vec3(0.0f, 0.0f, lenLowerArm / 2.0f));
		modelToCameraStack.Scale(glm::vec3(widthLowerArm / 2.0f, widthLowerArm / 2.0f, lenLowerArm / 2.0f));
		glUniformMatrix4fv(modelToCameraMatrixUnif, 1, GL_FALSE, glm::value_ptr(modelToCameraStack.Top()));
		glDrawElements(GL_TRIANGLES, ARRAY_COUNT(indexData), GL_UNSIGNED_SHORT, 0);
		modelToCameraStack.Pop();

		glBindVertexArray(0);
		glUseProgram(0);
	}
	void write()
	{
		printf("angLowerArm:\t%f\n", angLowerArm);
	}
	glm::vec3		posLowerArm;
	float			angLowerArm;
	float			lenLowerArm;
	float			widthLowerArm;
};

class Wist:public GeoNode
{
public:
	Wist():
		posWrist(glm::vec3(0.0f, 0.0f, 5.0f))
		, angWristRoll(0.0f)
		, angWristPitch(67.5f)
		, lenWrist(2.0f)
		, widthWrist(2.0f)
	{}
	void AdjWristPitch(bool bIncrement)
	{
		angWristPitch += bIncrement ? STANDARD_ANGLE_INCREMENT : -STANDARD_ANGLE_INCREMENT;
		angWristPitch = Clamp(angWristPitch, 0.0f, 90.0f);
	}

	void AdjWristRoll(bool bIncrement)
	{
		angWristRoll += bIncrement ? STANDARD_ANGLE_INCREMENT : -STANDARD_ANGLE_INCREMENT;
		angWristRoll = fmodf(angWristRoll, 360.0f);
	}
private:
	void draw(MatrixStack &modelToCameraStack)
	{
		glUseProgram(theProgram);
		glBindVertexArray(vao);


		modelToCameraStack.Translate(posWrist);
		modelToCameraStack.RotateZ(angWristRoll);
		modelToCameraStack.RotateX(angWristPitch);

		modelToCameraStack.Push();
		modelToCameraStack.Scale(glm::vec3(widthWrist / 2.0f, widthWrist/ 2.0f, lenWrist / 2.0f));
		glUniformMatrix4fv(modelToCameraMatrixUnif, 1, GL_FALSE, glm::value_ptr(modelToCameraStack.Top()));
		glDrawElements(GL_TRIANGLES, ARRAY_COUNT(indexData), GL_UNSIGNED_SHORT, 0);
		modelToCameraStack.Pop();

		glBindVertexArray(0);
		glUseProgram(0);
	}
	void write()
	{
		printf("angWristPitch:\t%f\n", angWristPitch);
		printf("angWristRoll:\t%f\n", angWristRoll);
	}
	glm::vec3		posWrist;
	float			angWristRoll;
	float			angWristPitch;
	float			lenWrist;
	float			widthWrist;
};

class Fingers:public GeoNode
{
public:
	Fingers():
		posLeftFinger(glm::vec3(1.0f, 0.0f, 1.0f))
		, posRightFinger(glm::vec3(-1.0f, 0.0f, 1.0f))
		, angFingerOpen(180.0f)
		, lenFinger(2.0f)
		, widthFinger(0.5f)
		, angLowerFinger(45.0f)
	{}
	void AdjFingerOpen(bool bIncrement)
	{
		angFingerOpen += bIncrement ? SMALL_ANGLE_INCREMENT : -SMALL_ANGLE_INCREMENT;
		angFingerOpen = Clamp(angFingerOpen, 9.0f, 180.0f);
	}
private:
	void draw(MatrixStack &modelToCameraStack)
	{
		glUseProgram(theProgram);
		glBindVertexArray(vao);


		modelToCameraStack.Translate(posLeftFinger);
		modelToCameraStack.RotateY(angFingerOpen);

		modelToCameraStack.Push();
		modelToCameraStack.Translate(glm::vec3(0.0f, 0.0f, lenFinger / 2.0f));
		modelToCameraStack.Scale(glm::vec3(widthFinger / 2.0f, widthFinger/ 2.0f, lenFinger / 2.0f));
		glUniformMatrix4fv(modelToCameraMatrixUnif, 1, GL_FALSE, glm::value_ptr(modelToCameraStack.Top()));
		glDrawElements(GL_TRIANGLES, ARRAY_COUNT(indexData), GL_UNSIGNED_SHORT, 0);
		modelToCameraStack.Pop();

		{
			//Draw left lower finger
			modelToCameraStack.Push();
			modelToCameraStack.Translate(glm::vec3(0.0f, 0.0f, lenFinger));
			modelToCameraStack.RotateY(-angLowerFinger);

			modelToCameraStack.Push();
			modelToCameraStack.Translate(glm::vec3(0.0f, 0.0f, lenFinger / 2.0f));
			modelToCameraStack.Scale(glm::vec3(widthFinger / 2.0f, widthFinger/ 2.0f, lenFinger / 2.0f));
			glUniformMatrix4fv(modelToCameraMatrixUnif, 1, GL_FALSE, glm::value_ptr(modelToCameraStack.Top()));
			glDrawElements(GL_TRIANGLES, ARRAY_COUNT(indexData), GL_UNSIGNED_SHORT, 0);
			modelToCameraStack.Pop();

			modelToCameraStack.Pop();
		}
		modelToCameraStack.Pop();

		//Draw right finger
		modelToCameraStack.Push();
		modelToCameraStack.Translate(posRightFinger);
		modelToCameraStack.RotateY(-angFingerOpen);

		modelToCameraStack.Push();
		modelToCameraStack.Translate(glm::vec3(0.0f, 0.0f, lenFinger / 2.0f));
		modelToCameraStack.Scale(glm::vec3(widthFinger / 2.0f, widthFinger/ 2.0f, lenFinger / 2.0f));
		glUniformMatrix4fv(modelToCameraMatrixUnif, 1, GL_FALSE, glm::value_ptr(modelToCameraStack.Top()));
		glDrawElements(GL_TRIANGLES, ARRAY_COUNT(indexData), GL_UNSIGNED_SHORT, 0);
		modelToCameraStack.Pop();

		{
			//Draw right lower finger
			modelToCameraStack.Push();
			modelToCameraStack.Translate(glm::vec3(0.0f, 0.0f, lenFinger));
			modelToCameraStack.RotateY(angLowerFinger);

			modelToCameraStack.Push();
			modelToCameraStack.Translate(glm::vec3(0.0f, 0.0f, lenFinger / 2.0f));
			modelToCameraStack.Scale(glm::vec3(widthFinger / 2.0f, widthFinger/ 2.0f, lenFinger / 2.0f));
			glUniformMatrix4fv(modelToCameraMatrixUnif, 1, GL_FALSE, glm::value_ptr(modelToCameraStack.Top()));
			glDrawElements(GL_TRIANGLES, ARRAY_COUNT(indexData), GL_UNSIGNED_SHORT, 0);
			modelToCameraStack.Pop();

			modelToCameraStack.Pop();
		}
		
		glBindVertexArray(0);
		glUseProgram(0);
	}
	void write()
	{
		printf("angFingerOpen:\t%f\n", angFingerOpen);
	}
	glm::vec3		posLeftFinger, posRightFinger;
	float			angFingerOpen;
	float			lenFinger;
	float			widthFinger;
	float			angLowerFinger;
};
*/
void WritePose(GeoNode &node)
{
	node.writePose();
	printf("\n");
}

//GeoNode scene(glm::vec3(0,0,0),glm::vec3(0,0,0),false);
//Base base(glm::vec3(0,0,0),glm::vec3(0,0,0),false);
//UpperArm upperarm;
//LowerArm lowerarm;
//Wist wist;
//Fingers fingers;
GeoNode scene;
Base base;
BaseLeft baseleft;
BaseRight baseright;
UpperArm upperarm;



//Called after the window and OpenGL are initialized. Called exactly once, before the main loop.
void init()
{
	InitializeProgram();
	InitializeVAO();


	glEnable(GL_CULL_FACE);
	glCullFace(GL_BACK);
	glFrontFace(GL_CW);

	glEnable(GL_DEPTH_TEST);
	glDepthMask(GL_TRUE);
	glDepthFunc(GL_LEQUAL);
	glDepthRange(0.0f, 1.0f);

	//assign relationship
	scene.children.push_back(&base);
	base.children.push_back(&baseleft);
	base.children.push_back(&baseright);
	base.children.push_back(&upperarm);
	
}

//Called to update the display.
//You should call glutSwapBuffers after all of your rendering to display what you rendered.
//If you need continuous updates of the screen, call glutPostRedisplay() at the end of the function.
void display()
{
	glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
	glClearDepth(1.0f);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	//g_armature.Draw();
	MatrixStack modelToCameraStack;
	scene.drawTree(modelToCameraStack);

	glutSwapBuffers();
	glutPostRedisplay();
}

//Called whenever the window is resized. The new window size is given, in pixels.
//This is an opportunity to call glViewport or glScissor to keep up with the change in size.
void reshape (int w, int h)
{
	cameraToClipMatrix[0].x = fFrustumScale * (h / (float)w);
	cameraToClipMatrix[1].y = fFrustumScale;

	glUseProgram(theProgram);
	glUniformMatrix4fv(cameraToClipMatrixUnif, 1, GL_FALSE, glm::value_ptr(cameraToClipMatrix));
	glUseProgram(0);

	glViewport(0, 0, (GLsizei) w, (GLsizei) h);
}

//Called whenever a key on the keyboard was pressed.
//The key is given by the ''key'' parameter, which is in ASCII.
//It's often a good idea to have the escape key (ASCII value 27) call glutLeaveMainLoop() to 
//exit the program.
void keyboard(unsigned char key, int x, int y)
{
	switch (key)
	{
	case 27:
		glutLeaveMainLoop();
		return;
	case 'a': base.adjBase(true); break;
	case 'd': base.adjBase(false); break;
	
	case 'w': upperarm.AdjUpperArm(false); break;
	case 's': upperarm.AdjUpperArm(true); break;
	/*
	case 'r': lowerarm.AdjLowerArm(false); break;
	case 'f': lowerarm.AdjLowerArm(true); break;
	case 't': wist.AdjWristPitch(false); break;
	case 'g': wist.AdjWristPitch(true); break;
	case 'z': wist.AdjWristRoll(true); break;
	case 'c': wist.AdjWristRoll(false); break;
	case 'q': fingers.AdjFingerOpen(true); break;
	case 'e': fingers.AdjFingerOpen(false); break;
	*/
	case 'p': WritePose(scene); break;
	}
}


unsigned int defaults(unsigned int displayMode, int &width, int &height) {return displayMode;}

