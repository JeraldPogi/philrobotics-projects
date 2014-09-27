/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "Config_Pinguino.h"                                                 |
* |:----          |:----                                                                |
* |Description:   | Configuration file for Pinguino Platform Compatibility              |
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
* |v00.02.01    |2013xxxx   |ESCII              |Pinguino Port                      |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef Config_Pinguino_h
#define Config_Pinguino_h

#define init()                                  setup()
#define cycle()                                 loop()

// Pinguino Pin Signal Name
// 15           Collision Sensor 3              (Right)
// 14           Collision Sensor 2              (Center)
// 13           Collision Sensor 1              (Left)
#define KI_RIGHT_WALLSENSOR                     15
#define KI_CENTER_WALLSENSOR                    14
#define KI_LEFT_WALLSENSOR                      13

// 10           Line Sensor 1                   (Right)
// 11           Line Sensor 2                   (Center)
// 12           Line Sensor 3                   (Left)
#define KI_RIGHT_LINESENSOR                     10
#define KI_CENTER_LINESENSOR                    11
#define KI_LEFT_LINESENSOR                      12

// 7            Motor 1 Direction Control       (Right Motor)
// 6            Motor 1 Run Control             (Right Motor)
// 5            Motor 2 Run Control             (Left Motor)
// 4            Motor 2 Direction Control       (Left Motor)
#define KI_RIGHTMOTOR_DIRCTRL                   7
#define KI_RIGHTMOTOR_RUNCTRL                   6
#define KI_LEFTMOTOR_RUNCTRL                    5
#define KI_LEFTMOTOR_DIRCTRL                    4

// 1            Right Wheel Tachometer
// 0            Left Wheel Tachometer
#define KI_RIGHTWHEEL_TACHO                     1
#define KI_LEFTWHEEL_TACHO                      0

/* Digital Pins */
#define makeInput(Pin)                          pinmode(Pin,INPUT)
#define makeOutput(Pin)                         pinmode(Pin,OUTPUT)

#define setPin(Pin)                             digitalwrite(Pin,HIGH)
#define clrPin(Pin)                             digitalwrite(Pin,LOW)
#define getPinState(Pin)                        digitalread(Pin)

/* Analog Output */
#if(MOTOR_TYPE == USE_DC_VAR_SPEED)

#define LEFT_MOTOR                              (0)
#define RIGHT_MOTOR                             (1)

#define setupSoftDAC(MOTOR, Pin, Value)         analogwrite(Pin, Value))                                                                                        // Ignore MOTOR Param
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
#define delayMs(delay_val)                      Delayms(delay_val)

/* Hardware Serial Wrapper Functions */
void serial_putchar2(uint8_t *pui8buff, uint8_t ui8length);

#define setupSerial(baud)                       serial_begin(baud)

#define serialWrite(byte_val)                   serial_putchar(byte_val)
#define serialWriteString(string_val)          	serial_printf(string_val);
#define serialWriteBlock(buff_ptr,length)       serial_putchar2(buff_ptr,length)

#define serialDataCount(void)                   serial_available()
#define serialRead()                            serial_read()

/* Math Lib */
#define randomNum(min_range, max_range)         random(min_range, max_range)
#endif