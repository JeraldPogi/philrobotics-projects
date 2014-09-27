#include "PBotGlobals.h"

// *** Low Level Sensor States ***********************************************
bool_t blWallDetectedonLeft;
bool_t blWallDetectedonCenter;
bool_t blWallDetectedonRight;

bool_t blLineDetectedonLeft;
bool_t blLineDetectedonCenter;
bool_t blLineDetectedonRight;

// *** D-Protocol variables ***********************************************
// Working Buffer
uint8_t strDProtocolID[4];
uint8_t strCommandCode[5];
uint8_t strParam1[7];
uint8_t strParam2[7];

uint8_t ui8ObstacleLocation;
uint8_t ui8LineLocation;

bool_t blDPacketReady;
bool_t blDPacketAvailable;
bool_t blBufferOverflow;
bool_t blTerminationError;

bool_t blObstacleSensorPolarity;                           // 0 detect white, 1 detect white
bool_t blLineSensorPolarity;                               // 0 detect white, 1 detect white

