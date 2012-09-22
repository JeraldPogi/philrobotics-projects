
#ifndef _3DMATH_H_
#define _3DMATH_H_

typedef unsigned char	byte;
//typedef unsigned char	u8;
typedef signed char		i8;
//typedef unsigned short	u16;
typedef signed short	i16;
//typedef unsigned long	u32;
typedef signed long		i32;

typedef enum { FALSE = 0, TRUE } BOOL;

#define abs(x)	(x<0)?	(0-x):(x)

/*************************************/
typedef struct
{	// 2D coordinates
    i16 x;
    i16 y;
}Point;

typedef struct
{	// 3D coordinates
    i16 x;
    i16 y;
    i16 z;
}Vertex;

typedef struct
{	//  Triangular face
 	u8 A;	// indices of projected vertices (2d points)
    u8 B;
    u8 C;
	u8 color;	// render color
} Triangle;

typedef struct
{	// 3D angular rotations
    u8 x;
    u8 y;
    u8 z;
}Rotation;

/*************************************/
i16 sin_table(u8 angle);
i16 cos_table(u8 angle);

/*************************************/
#define TETRAHEDRON_VERTICES	4
#define TETRAHEDRON_TRIANGLES	4

#define CUBE_VERTICES			8
#define CUBE_TRIANGLES			(6*2)

#define OCTAHEDRON_VERTICES		6
#define OCTAHEDRON_TRIANGLES	8

#define PYRAMID_VERTICES		5
#define PYRAMID_TRIANGLES		5+1

#define PRISM_VERTICES			6
#define PRISM_TRIANGLES			2+(3*2)

#define ICOSAHEDRON_VERTICES	12
#define ICOSAHEDRON_TRIANGLES	20

/*************************************/
extern const Vertex		tetrahedron_vectices[TETRAHEDRON_VERTICES];
extern const Triangle	tetrahedron_triangles[TETRAHEDRON_TRIANGLES];

extern const Vertex		cube_vectices[CUBE_VERTICES];
extern const Triangle	cube_triangles[CUBE_TRIANGLES];

extern const Vertex		octahedron_vectices[OCTAHEDRON_VERTICES];
extern const Triangle	octahedron_triangles[OCTAHEDRON_TRIANGLES];

extern const Vertex		pyramid_vectices[PYRAMID_VERTICES];
extern const Triangle	pyramid_triangles[PYRAMID_TRIANGLES];

extern const Vertex		prism_vectices[PRISM_VERTICES];
extern const Triangle	prism_triangles[PRISM_TRIANGLES];

extern const Vertex		icosahedron_vectices[ICOSAHEDRON_VERTICES];
extern const Triangle	icosahedron_triangles[ICOSAHEDRON_TRIANGLES];


#endif	// _3DMATH_H_

