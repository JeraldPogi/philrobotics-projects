/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "Config_Arduino.h"                                                  |
* |:----          |:----                                                                |
* |Description:   | Configuration file for Arduino Platform Compatibility               |
* |Revision:      | v00.02.01                                                           |
* |Author:        | Efren S. Cruzat II                                                  |
* |               |                                                                     |
* |Dependencies:  |                                                                     |
*
* > This program is free software: you can redistribute it and/or modify
* > it under the terms of the GNU General Public License as published by
* > the Free Software Foundation, either version 3 of the License, or
* > (at your option) any later version.
* > This program is distributed in the hope that it will be useful,
* > but WITHOUT ANY WARRANTY; without even the implied warranty of
* > MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* > GNU General Public License for more details.
* > <BR><BR>
* > You should have received a copy of the GNU General Public License
* > along with this program. If not, see http://www.gnu.org/licenses/
* <BR>
*---------------------------------------------------------------------------------------------
* |FW Version   |Date       |Author             |Description                        |
* |:----        |:----      |:----              |:----                              |
* |v00.02.01    |2013xxxx   |ESCII              |Arduino Port                       |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef Config_Arduino_h
#define Config_Arduino_h

#include <inttypes.h>
#include <Arduino.h>

#define init()                                  setup()
#define cycle()                                 loop()

// Arduino Pin  Signal Name
// 2            Collision Sensor 3              (Right)
// 3            Collision Sensor 2              (Center)
// 4            Collision Sensor 1              (Left)
#define KI_RIGHT_WALLSENSOR                     2
#define KI_CENTER_WALLSENSOR                    3
#define KI_LEFT_WALLSENSOR                      4

// 7            Line Sensor 1                   (Right)
// 6            Line Sensor 2                   (Center)
// 5            Line Sensor 3                   (Left)
#define KI_RIGHT_LINESENSOR                     5
#define KI_CENTER_LINESENSOR                    6
#define KI_LEFT_LINESENSOR                      7

// 8            Motor 1 Direction Control       (Right Motor)
// 9            Motor 1 Run Control             (Right Motor)
// 10           Motor 2 Run Control             (Left Motor)
// 11           Motor 2 Direction Control       (Left Motor)
#define KI_RIGHTMOTOR_DIRCTRL                   8
#define KI_RIGHTMOTOR_RUNCTRL                   9
#define KI_LEFTMOTOR_RUNCTRL                    10
#define KI_LEFTMOTOR_DIRCTRL                    11

// 12           Right Wheel Tachometer
// 13           Left Wheel Tachometer
#define KI_RIGHTWHEEL_TACHO                     12
#define KI_LEFTWHEEL_TACHO                      13

/* Digital Pins */
#define makeInput(Pin)                          pinMode(Pin,INPUT)
#define makeOutput(Pin)                         pinMode(Pin,OUTPUT)

#define setPin(Pin)                             digitalWrite(Pin,HIGH)
#define clrPin(Pin)                             digitalWrite(Pin,LOW)
#define togglePin(Pin)                          digitalWrite(pin, !digitalRead(pin))
#define getPinState(Pin)                        digitalRead(Pin)

/* Analog Output */
#if(MOTOR_TYPE == USE_DC_VAR_SPEED)

#define LEFT_MOTOR                              (0)
#define RIGHT_MOTOR                             (1)

#define setupSoftDAC(MOTOR, Pin, Value)         analogWrite(Pin, Value)                                                                                         // Ignore MOTOR Param
#define setSoftDAC(MOTOR, Value)                ((MOTOR == LEFT_MOTOR) ? analogWrite(KI_LEFTMOTOR_RUNCTRL, Value) : analogWrite(KI_RIGHTMOTOR_RUNCTRL, Value))  // Ignore Pin Param

#endif

/* Servo Pin */
#if(MOTOR_TYPE == USE_SERVO)
//#include <Servo.h>
//Servo   servoLeft, servoRight;

#define LEFT_SERVO                              (0)
#define RIGHT_SERVO                             (1)

#define setupServo(SERVO, Pin, Angle)           ((SERVO == LEFT_SERVO) ? servoLeft.attach(KI_LEFTMOTOR_RUNCTRL) : servoRight.attach(KI_RIGHTMOTOR_RUNCTRL)) \
    ((SERVO == LEFT_SERVO) ? servoLeft.write(Angle) : servoRight.write(Angle))                                      // Ignore Pin Param
#define setServoAngle(SERVO, Angle)             ((SERVO == LEFT_SERVO) ? servoLeft.write(Angle) : servoRight.write(Angle))
#endif

/* Time */
#define getMs()                                 millis()
#define getElapsedMs(time_stamp)                (millis()-time_stamp)
#define delayMs(delay_val)                      delay(delay_val)

#define getUs()                                 micros()
#define getElapsedUs(time_stamp)                (micros()-time_stamp)
#define delayUs(delay_val)                      delayMicroseconds(delay_val)

/* Hardware Serial Wrapper Functions */
#ifdef __cplusplus
extern "C"
{
#endif
void Serial_begin(unsigned long baud);

char Serial_write(char byte_val);
long Serial_print(char* string_val);
long Serial_write2(uint8_t* buff, char lenght);

int Serial_available(void);
int Serial_read(void);

#ifdef __cplusplus
}
#endif

#define setupSerial(baud)                       Serial_begin(baud)

#define serialWrite(byte_val)                   Serial_write(byte_val)
#define serialWriteString(string_val)           Serial_print(string_val)
#define serialWriteBlock(buff,lenght)           Serial_write2(buff,lenght)

#define serialDataCount(void)                   Serial_available()
#define serialRead()                            Serial_read()

/* Math Lib */
#define randomNum(min_range, max_range)         random(min_range, max_range)
#endif