#include <windows.h>
#include <stdio.h>
#include <iostream>
#include <GL/glut.h>
#include <math.h>
#define PI 3.1416

int boatStatus = 1;
int cloudStatus = 1;

float boatX = 0;
float boatY = 0;

float cloudX = 0;
float cloudY = 0;


float move, angle;

void DrawCircle(float cx, float cy, float r, int n_seg)
{
    glBegin(GL_TRIANGLE_FAN);
    for (int i = 0; i < n_seg; i++)
        {
            float theta = 2.0f * 3.1415926f * float(i) / float(n_seg);//get the current angle

            float x = r * cosf(theta);//calculate the x component
            float y = r * sinf(theta);//calculate the y component

            glVertex2f(x + cx, y + cy);//output vertex
        }
    glEnd();
}

void sun(float radius_x, float radius_y)
{
	int i = 0;
	float angle = 0.0;

	glBegin(GL_POLYGON);

		for(i = 0; i < 100; i++)
		{
			angle = 2 * PI * i / 100;
			glColor3f(1.0,0.64,0.0);
			glVertex3f (cos(angle) * radius_x, sin(angle) * radius_y, 0);
		}

	glEnd();
}

void tree()
{

    glPushMatrix();

    glBegin(GL_POLYGON); //Tree
    glColor3f(1.2, 0.5, 0.4);
    glVertex2d(435, 344);
    glVertex2d(450, 345);
    glVertex2d(450, 550);
    glVertex2d(435, 550);

    glEnd();


    glColor3f(0.0, 0.7, 0.1);
    DrawCircle(415, 545, 50, 1000); // 4
    glColor3f(0.0, 0.7, 0.1);
    DrawCircle(430, 600, 50, 1000);
    glColor3f(0.0, 0.7, 0.1);
    DrawCircle(460, 550, 50, 1000);

    glPopMatrix();

}
void scene()
{
    glPushMatrix();

    glBegin(GL_POLYGON); //Sky
    glColor3f(0.4, 0.5, 1.0);
    glVertex2d(0, 800);
    glVertex2d(1200, 800);
    glColor3f(0.7, 0.7, 1.0);
    glVertex2d(1200, 0);
    glVertex2d(0, 0);
    glEnd();

    glBegin(GL_POLYGON); //Middle ground
    glColor3f(0.0, 0.7, 0.0);
    glVertex2d(0, 100);
    glVertex2d(0, 280);
    glVertex2d(200, 330);
    glVertex2d(400, 350);
    glVertex2d(600, 330);
    glVertex2d(800, 320);
    glVertex2d(1000, 300);
    glVertex2d(1200, 270);
    glVertex2d(1200, 100);

    glEnd();


    glBegin(GL_POLYGON); // River
    glColor3f(0.2, 0.3, 1.1);
    glVertex2d(0, 150);
    glVertex2d(200, 150);
    glVertex2d(400, 150);
    glVertex2d(600, 150);
    //glColor3f(0.2, 0.3, 1.1);
    glVertex2d(800, 150);
    glVertex2d(1000, 150);
    glVertex2d(1200, 150);
    glVertex2d(1200, 0);
    glVertex2d(0, 0);
    glEnd();


    glBegin(GL_POLYGON); //House
    glColor3f(0.9, 0.7, 0.1);
    glVertex2d(350, 344);
    glVertex2d(350, 460);
    glVertex2d(430, 460);
    glVertex2d(430, 344);
    glEnd();


    glBegin(GL_POLYGON); //House top
    glColor3f(0.9, 0.0, 0.0);
    glVertex2d(340, 460);
    glVertex2d(390, 500);
    glVertex2d(440, 460);
    glEnd();

    glBegin(GL_POLYGON); //Door
    glColor3f(1.0, 1.0, 0.0);
    glVertex2d(370, 344);
    glVertex2d(370, 430);
    glVertex2d(410, 430);
    glVertex2d(410, 344);
    glEnd();
    glBegin(GL_LINE_LOOP);
    glColor3f(0.0, 0.0, 0.0);
    glVertex2d(390, 344);
    glVertex2d(390, 430);
    glEnd();


    glPopMatrix();

}




void drawBoat(int i)
{
    glPushMatrix();

    glBegin(GL_POLYGON); // Boat Upper part
   // glColor3f(0.7, 0.8, 0.1);
    glColor3f(0.54, 0.27, 0.07);
    glVertex2d(230, 100);
    glVertex2d(230, 165);
    glVertex2d(480, 165);
    glVertex2d(480, 100);

    glEnd();

    glBegin(GL_POLYGON); // lower part
    //glColor3f(0.9, 0.5, 0.1);
    glColor3f(0.0, 0.0, 0.0);
    glVertex2d(250, 20);
    glVertex2d(220, 100);
    glVertex2d(550, 100);
    glVertex2d(500, 20);
    glEnd();

    glBegin(GL_POLYGON); // hole
    glColor3f(1.0, 1.0, 1.0);
    glVertex2d(235, 135);
    glVertex2d(235, 160);
    glVertex2d(270, 160);
    glVertex2d(270, 135);
    glEnd();

    glBegin(GL_TRIANGLES); // boat Top
    glColor3f(0.85, 0.64, 0.12);
    glVertex2d(300, 165);
    glVertex2d(355, 210);
    glVertex2d(410, 165);
    glEnd();

    glFlush();
    glPopMatrix();
}

void drawCloud(int i)
{
    glPushMatrix();
    glColor3f(0.78, 0.78, 0.78);
    DrawCircle(260, 625, 40, 1000); // 4
    glColor3f(0.78, 0.78, 0.78);
    DrawCircle(275, 690, 40, 1000);
    glColor3f(0.78, 0.78, 0.78);
    DrawCircle(305, 640, 40, 1000);
    glFlush();
    glPopMatrix();


}



void myInit(void)
{
    glClearColor(0.0, 0.0, 1.0, 0.0);
    glColor3f(1.0f, 1.0f, 1.0f);
    //glPointSize(0.0);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluOrtho2D(0.0, 1200.0, 0.0, 800.0);
}

void keyboard(unsigned char key, int x, int y)
{

    switch (key)
        {

        case 'b':		//boat start
        case 'B':
            boatStatus = 1;
            //cloudStatus = 1;
            break;
        case 's':		//boat stop
        case 'S':
            boatStatus = 0;
            //cloudStatus = 0;
            break;

        default:
            break;
        }
}

void boat()
{
    if (boatStatus == 1)
    {
        boatX += .35;
    }
    if (boatX>1000)
    {
        boatX = -600;
    }
    glPushMatrix();
    glTranslatef(boatX, boatY, 0);
    drawBoat(1);
    glPopMatrix();
}

void cloud()
{
    if (cloudStatus == 1)
    {
        cloudX += .1;
    }
    if (cloudX>1500)
    {
        cloudX = -600;
    }
    glPushMatrix();
    glTranslatef(cloudX, cloudY, 0);
    drawCloud(1);
    glPopMatrix();
}

void myDisplay(void)
{
    scene();

    glPushMatrix();
    glTranslatef(1100,700,0);
    sun(50,60);
    glPopMatrix();

    glPushMatrix();
    tree();         // besides house
    glPopMatrix();


    glPushMatrix();
    glTranslatef(600,-120,0);
    tree();
    glPopMatrix();

    glPushMatrix();
    glTranslatef(250,-150,0);
    tree();
    glPopMatrix();

    glPushMatrix();
    glTranslatef(-250,-100,0);
    tree();
    glPopMatrix();

    boat();

    cloud(); // main cloud

    glPushMatrix();
    glTranslatef(-250,-30,0);
    cloud();
    glPopMatrix();

    glPushMatrix();
    glTranslatef(-500,50,0);
    cloud();
    glPopMatrix();

    glFlush();

    glutPostRedisplay();
    glutSwapBuffers();
}
int main()
{

    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutInitWindowSize(1250, 600);
    glutInitWindowPosition(0, 0);

    glutCreateWindow("Moving Boat");
    glutKeyboardFunc(keyboard);
    glutDisplayFunc(myDisplay);
    myInit();
    glutMainLoop();
    return 0;
}
