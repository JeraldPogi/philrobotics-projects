#include <platform.h>
#include <N6100LCD.h>

#include "3dmath.h"
#include "3dmodels.h"

void draw_3D(const Vertex *V, const Triangle *T, u8 nVertices, u8 nTriangles, Rotation R);

#define draw_tetrahedron(R)		\
		draw_3D(tetrahedron_vectices, tetrahedron_triangles,	\
			TETRAHEDRON_VERTICES, TETRAHEDRON_TRIANGLES, R)

#define draw_cube(R)		\
		draw_3D(cube_vectices, cube_triangles,	\
			CUBE_VERTICES, CUBE_TRIANGLES, R)

#define draw_octahedron(R)		\
		draw_3D(octahedron_vectices, octahedron_triangles,	\
			OCTAHEDRON_VERTICES, OCTAHEDRON_TRIANGLES, R)

#define draw_pyramid(R)		\
		draw_3D(pyramid_vectices, pyramid_triangles,	\
			PYRAMID_VERTICES, PYRAMID_TRIANGLES, R)

#define draw_prism(R)		\
		draw_3D(prism_vectices, prism_triangles,	\
			PRISM_VERTICES, PRISM_TRIANGLES, R)

#define draw_icosahedron(R)		\
		draw_3D(icosahedron_vectices, icosahedron_triangles,	\
			ICOSAHEDRON_VERTICES, ICOSAHEDRON_TRIANGLES, R)

// N6100LCD(DAT_PIN, CLK_PIN, CS_PIN, RST_PIN)
N6100LCD mylcd(PA0, PA2, PA3, PA1);

void demo(void);

int main(void)
{
	mylcd.init();
	
	mylcd.clear(LCD_WHITE);
	mylcd.text( "\"POLYHEDRONS\"", 25, 40, LCD_DARKBLUE, LCD_WHITE);
	mylcd.text( "N6610LCD 3D Demo", 15, 60, LCD_DARKBLUE, LCD_WHITE);
	delay_ms(2000);
    
    while(true)
    {
        demo();
    }
}

void demo()
{
	u8 angle;
	Rotation r;

	mylcd.clear(LCD_WHITE);
	mylcd.text( "Tetrahedron", 10, 7, LCD_RED, LCD_WHITE);
	for(angle=0; angle<150; angle++)
	{
		r.x = angle+0; r.y = angle+0; r.z = 255-angle;
		draw_tetrahedron(r); 	//delay_ms(10);
	}	
	mylcd.clear(LCD_WHITE);
	mylcd.text( "Hexahedron (Cube)", 10, 7, LCD_RED, LCD_WHITE);
	for(angle=0; angle<150; angle++)
	{
		r.x = angle+45; r.y = angle+0; r.z = angle+10;
		draw_cube(r);		//delay_ms(10);
	}

	mylcd.clear(LCD_WHITE);
	mylcd.text( "Octahedron", 10, 7, LCD_RED, LCD_WHITE);
	for(angle=0; angle<150; angle++)
	{
		r.x = 255-angle; r.y = 255-angle; r.z = 255-angle;
		draw_octahedron(r); 	//delay_ms(10);
	}

	mylcd.clear(LCD_WHITE);
	mylcd.text( "Square Pyramid", 10, 7, LCD_RED, LCD_WHITE);
	for(angle=0; angle<150; angle++)
	{
		r.x = angle+45; r.y = angle+0; r.z = angle+10;
		draw_pyramid(r); 	//delay_ms(10);
	}

	mylcd.clear(LCD_WHITE);
	mylcd.text( "Triangular Prism", 10, 7, LCD_RED, LCD_WHITE);
	for(angle=0; angle<150; angle++)
	{
		r.x = angle+40; r.y = angle+70; r.z = angle+20;
		draw_prism(r); 		//delay_ms(10);
	}

	mylcd.clear(LCD_WHITE);
	mylcd.text( "Icosahedron", 10, 7, LCD_RED, LCD_WHITE);
	for(angle=0; angle<150; angle++)
	{
		r.x = angle+40; r.y = angle+70; r.z = angle+20;
		draw_icosahedron(r); 	//delay_ms(10);
	}

}

/*****	TRIANGLE COLOR FILL		******/
void fill_triangle(Point A, Point B, Point C, u8 color)
{
	//#define kSCALE (1<<9)	// (1<<15)

	Point P;	// swap temp 
	i16 dx1=0, dx2=0, dx3=0;	  
	i16 h, sx, ex;	// horizontal line
	
	// bubble sort points
	if(B.y<A.y){ P=A; A=B; B=P; }
	if(C.y<B.y){ P=B; B=C; C=P; }
	if(C.y<A.y){ P=A; A=C; C=P;	}
	if(B.y<A.y){ P=A; A=B; B=P; }

	// compute dx's
	if (B.y-A.y > 0) dx1 = ((B.x-A.x)<<9) / (B.y-A.y);
	if (C.y-B.y > 0) dx2 = ((C.x-B.x)<<9) / (C.y-B.y);
	if (C.y-A.y > 0) dx3 = ((C.x-A.x)<<9) / (C.y-A.y);

	for(h = (i16) A.y; h < B.y; h++) {
		sx = A.x + ( ((h-A.y)*dx3)>>9 );
		ex = A.x + ( ((h-A.y)*dx1)>>9 );
		mylcd.Hline(sx,ex,h,color);
	}
	for(h = (i16) B.y; h < C.y; h++) {
		sx = A.x + ( ((h-A.y)*dx3)>>9 );
		ex = B.x + ( ((h-B.y)*dx2)>>9 );
		mylcd.Hline(sx,ex,h,color);
	}
}

/*****	BACKFACE CULLING		******/
BOOL Backface(Point A, Point B, Point C)
{
	Point L1, L2;	// lines/edges

	L1.x = A.x - B.x;
	L1.y = A.y - B.y;
	L2.x = C.x - B.x;
	L2.y = C.y - B.y;

	if( ((L1.x * L2.y)  - (L1.y * L2.x)) < 0 )
		return TRUE;
	return FALSE;
}

// quarter sine
const u8 sine_table[64] = 
{
    0,6,13,19,25,31,37,44,
    50,56,62,68,74,80,86,92,
    98,103,109,115,120,126,131,136,
    142,147,152,157,162,167,171,176,
    180,185,189,193,197,201,205,208,
    212,215,219,222,225,228,231,233,
    236,238,240,242,244,246,247,249,
    250,251,252,253,254,254,255,255
};

i16 sin_table(u8 angle)
{
	u8 b;
	i16 i;
	if ((angle & 0x7F) == 0)
        return 0;
    b = angle & 0x3F;
    if (angle & 0x40)
        b = 0x3F - b;
	i = sine_table[b];
    if (angle & 0x80)
        return -i;
    return i;
}

i16 cos_table(u8 angle)
{
    return sin_table(angle + 64);
}

/*****	DRAW 3D MODELS	*****/
#define SCALE_FACTOR	3
#define OFFSETX			75//66	// LCD width/2
#define OFFSETY			66	// LCD height/2
#define MAX_TRIANGLES	20

#define LINE_COLOR		0XE0	// edge color - e.g.LCD_RED
#define BG_COLOR		0XFF	// background color - e.g.LCD_BRIGHTBLUE

// LCD plot coordinates
static Point new_points[MAX_TRIANGLES];
static Point old_points[MAX_TRIANGLES];

void draw_3D(const Vertex * V, const Triangle * T, u8 nVertices, u8 nTriangles, Rotation R)
{
	u8 i;

	float tempX,tempY,tempZ;				// temporary coordinates
	float sinX,sinY,sinZ,cosX,cosY,cosZ;	// precomputed sin and cos values
	float px,py,pz;							// projected

	// sin and cos values
	sinX = sin_table( R.x ) / 255.0;
	sinY = sin_table( R.y ) / 255.0;
	sinZ = sin_table( R.z ) / 255.0;

	cosX = cos_table( R.x ) / 255.0;
	cosY = cos_table( R.y ) / 255.0;
	cosZ = cos_table( R.z ) / 255.0;

	// calculate the new coordinates of points
   	for (i=0; i<nVertices; i++)
	{
		tempX = V[i].x;
		tempY = V[i].y;
		tempZ = V[i].z;

		// store previous coordinates
		old_points[i] = new_points[i];

		// rotation on X axis
		py = tempY * cosX - tempZ * sinX;
		pz = tempY * sinX + tempZ * cosX;
		tempY =py; tempZ = pz;

		// rotation on Z axis
		px = tempX * cosZ - tempY * sinZ;
		py = tempX * sinZ + tempY * cosZ;
		tempX = px; tempY = py;

		// rotation on Y axis
		px = tempX * cosY - tempZ * sinY;
		pz = tempX * sinY + tempZ * cosY;

		// save the screen coordinates
		new_points[i].x = px * SCALE_FACTOR + OFFSETX;
		new_points[i].y = py * SCALE_FACTOR + OFFSETY;
	}

	for (i=0; i<nTriangles; i++)
	{
		// erase previous triangles
		if( !Backface( old_points[T[i].A], old_points[T[i].B], old_points[T[i].C] ) )
			fill_triangle(old_points[T[i].A], old_points[T[i].B], old_points[T[i].C], BG_COLOR);
	
		// lcd plot new triangles
		if( !Backface( new_points[T[i].A], new_points[T[i].B], new_points[T[i].C] ) )
			fill_triangle(new_points[T[i].A], new_points[T[i].B], new_points[T[i].C], T[i].color);
	}

}
