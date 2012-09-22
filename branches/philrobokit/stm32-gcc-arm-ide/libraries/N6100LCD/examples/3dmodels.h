
/***	TETRAHEDRON		***/
const Vertex tetrahedron_vectices[TETRAHEDRON_VERTICES]={
#if 0
	( 0, Sqr(3) - 1/Sqr(3),            0)
    (-1,        - 1/Sqr(3),            0)
    ( 1,        - 1/Sqr(3),            0)
    ( 0,                 0, 2 * Sqr(2/3))
#else
	{ 0, 14, 0},
    {-12,-7, 0},
    { 12,-7, 0},
    { 0, 0, 20}
#endif
};

const Triangle tetrahedron_triangles[TETRAHEDRON_TRIANGLES]={
	{ 0, 1, 2, LCD_YELLOW },
	{ 0, 2, 3, LCD_RED },
	{ 0, 3, 1, LCD_DARKGREEN },
    { 1, 3, 2, LCD_BLUE }
};

/***	HEXAHEDRON (CUBE)	***/
const Vertex cube_vectices[CUBE_VERTICES]={
	{-10, -10, -10},	//0
	{ 10, -10, -10},	//1
	{ 10,  10, -10},	//2
	{-10,  10, -10},	//3
	{-10, -10,  10},	//4
	{ 10, -10,  10},	//5
	{ 10,  10,  10},	//6
	{-10,  10,  10}		//7
};

const Triangle cube_triangles[CUBE_TRIANGLES]={
	{ 0, 1, 5, LCD_RED },
	{ 5, 4, 0, LCD_RED },
	{ 1, 2, 6, LCD_ORANGE },
    { 6, 5, 1, LCD_ORANGE },
    { 2, 3, 7, LCD_BLACK },
    { 7, 6, 2, LCD_BLACK },
    { 3, 0, 4, LCD_DARKGREEN },
    { 4, 7, 3, LCD_DARKGREEN },
    { 0, 3, 2, LCD_BLUE },
    { 2, 1, 0, LCD_BLUE },
    { 4, 5, 6, LCD_YELLOW },
    { 6, 7, 4, LCD_YELLOW }
};

/***	OCTAHEDRON		***/
const Vertex octahedron_vectices[OCTAHEDRON_VERTICES]={
	{ 17,  0,  0},	//0
	{  0, 17,  0},	//1
	{  0,  0, 17},	//2
	{-17,  0,  0},	//3
	{  0,-17,  0},	//4
	{  0,  0,-17}	//5
};

const Triangle octahedron_triangles[OCTAHEDRON_TRIANGLES]={
	{ 2, 0, 1, LCD_RED },
	{ 2, 1, 3, LCD_YELLOW },
	{ 2, 3, 4, LCD_DARKGREEN },
    { 2, 4, 0, LCD_BLUE },
	{ 5, 1, 0, LCD_PINK },
	{ 5, 3, 1, LCD_DARKGREEN },
	{ 5, 4, 3, LCD_YELLOW },
    { 5, 0, 4, LCD_RED }
};

/***	PYRAMID		***/
const Vertex pyramid_vectices[PYRAMID_VERTICES]={
	{  0,  0, 12},	//0
	{-10, 10, -8},	//1
	{ 10, 10, -8},	//2
	{ 10,-10, -8},	//3
	{-10,-10, -8},	//4
};

const Triangle pyramid_triangles[PYRAMID_TRIANGLES]={
	{ 0, 1, 4, LCD_RED },
	{ 0, 2, 1, LCD_YELLOW },
	{ 0, 3, 2, LCD_DARKGREEN },
	{ 0, 4, 3, LCD_ORANGE },
    { 1, 2, 3, LCD_BLUE },
	{ 3, 4, 1, LCD_BLUE }
};


/***	TRIANGULAR PRISM		***/
const Vertex prism_vectices[PRISM_VERTICES]={
	{  0, 10, 10},	//0
	{ 10, -7, 10},	//1
	{-10, -7, 10},	//2
	{  0, 10,-10},	//3
	{ 10, -7,-10},	//4
	{-10, -7,-10},	//5
};

const Triangle prism_triangles[PRISM_TRIANGLES]={
	{ 0, 2, 1, LCD_DARKGREEN },
	{ 3, 4, 5, LCD_PINK },
	{ 0, 1, 4, LCD_ORANGE },
	{ 4, 3, 0, LCD_ORANGE },
    { 1, 2, 5, LCD_BLUE },
	{ 5, 4, 1, LCD_BLUE },
	{ 2, 0, 3, LCD_RED },
    { 3, 5, 2, LCD_RED }
};

/***	TRIANGULAR PRISM		***/
const Vertex icosahedron_vectices[ICOSAHEDRON_VERTICES]={
	{  0,  0, 17},
	{ 15,  0,  8}, 
	{  5, 14,  8},
	{-12,  9,  8}, 
	{-12, -9,  8},
	{  5,-14,  8},
	{ 12,  9, -8},
	{ -5, 14, -8},
	{-15,  0, -8},
	{ -5,-14, -8},
	{ 12, -9, -8},
	{  0,  0,-17}
};

const Triangle icosahedron_triangles[ICOSAHEDRON_TRIANGLES]={
	{  0,  2,  1, LCD_BLUE},		//0
	{  0,  3,  2, LCD_YELLOW},		//1
	{  0,  4,  3, LCD_RED},			//2
	{  0,  5,  4, LCD_GREEN},		//3
	{  0,  1,  5, LCD_PINK},		//4
	{ 11,  6,  7, LCD_GRAY},		//5
	{ 11,  7,  8, LCD_PINK},	//6
	{ 11,  8,  9, LCD_DARKGREEN},	//7
	{ 11,  9, 10, LCD_DARKRED},		//8
	{ 11, 10,  6, LCD_DARKBLUE},	//9
	{  1,  2,  6, LCD_ORANGE},		//10
	{  2,  3,  7, LCD_BLUE},		//11
	{  3,  4,  8, LCD_YELLOW},		//12
	{  4,  5,  9, LCD_RED},			//13
	{  5,  1, 10, LCD_GREEN},		//14
	{  6,  2,  7, LCD_BLACK},		//15
	{  7,  3,  8, LCD_GRAY},		//16
	{  8,  4,  9, LCD_BRIGHTGREEN},	//17
	{  9,  5, 10, LCD_DARKGREEN},	//18
	{  10, 1,  6, LCD_GRAY}//LCD_ORANGE}		//19
};

