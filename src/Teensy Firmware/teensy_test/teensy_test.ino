/*

   Teensy firmware for the f1tenth car. The program subscribes to the /drive_pwm
   topic using the f1tenth_car/drive_values message format. It writes the received
   pwm values to the two pins, ESC_PIN and SERVO_PIN, controling the ESC and steering
   servo respectively.

   Created 2018-11-10 by Albert Anderberg
   Based on Teensy Firmware from F1tenth
   https://github.com/mlab-upenn/f1tenthpublic/tree/master/code/Teensy%20Firmware

*/



#define ESC_PIN 5
#define SERVO_PIN 6

boolean flagStop = false;                     // These values were cacluated for the specific Teensy microcontroller using an oscilloscope.
int pwm_center_value = 9830;                  //  15% duty cycle - corresponds to zero velocity, zero steering
int pwm_lowerlimit = 6554;                    //  10% duty cycle - corresponds to max reverse velocity, extreme left steering
int pwm_upperlimit = 13108;                   //  20% duty cycle - corresponds to max forward velocity, extreme right steering

byte i = 0;
void setup() {
  // Need to produce PWM signals so we need to setup the PWM registers. This setup happens next.
  
  analogWriteFrequency(ESC_PIN, 100);         // Frequency at which PWM signals is generated.
  analogWriteFrequency(SERVO_PIN, 100);
  analogWriteFrequency(3, 100);
  //analogWriteResolution(16);                  // Resolution for the PWM signal

  analogWrite(ESC_PIN, 0);
  analogWrite(SERVO_PIN, 127);
  analogWrite(3, 0);
}


void loop() {
  i += 1;
  analogWrite(3,i);
  analogWrite(ESC_PIN, i);
  delayMicroseconds(10000);
}

