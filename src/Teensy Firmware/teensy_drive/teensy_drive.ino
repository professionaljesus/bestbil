/*

   Teensy firmware for the f1tenth car. The program subscribes to the /drive_pwm
   topic using the f1tenth_car/drive_values message format. It writes the received
   pwm values to the two pins, ESC_PIN and SERVO_PIN, controling the ESC and steering
   servo respectively.

   Created 2018-11-10 by Albert Anderberg
   Based on Teensy Firmware from F1tenth
   https://github.com/mlab-upenn/f1tenthpublic/tree/master/code/Teensy%20Firmware

*/

#include <ros.h>
#include <std_msgs/Bool.h>
#include <std_msgs/String.h>
#include <std_msgs/Int32.h>
#include <std_msgs/Empty.h>
#include <f1tenth_car/drive_values.h>

#define ESC_PIN 5
#define SERVO_PIN 6

ros::NodeHandle  nh;

boolean flagStop = false;                     // These values were cacluated for the specific Teensy microcontroller using an oscilloscope.
int pwm_center_value = 9830;                  //  15% duty cycle - corresponds to zero velocity, zero steering
int pwm_lowerlimit = 6554;                    //  10% duty cycle - corresponds to max reverse velocity, extreme left steering
int pwm_upperlimit = 13108;                   //  20% duty cycle - corresponds to max forward velocity, extreme right steering

std_msgs::Int32 str_msg;                      // creater a ROS Publisher called chatter of type str_msg
ros::Publisher chatter("chatter", &str_msg);

// Declare message handlers
void messageDrive( const f1tenth_car::drive_values& pwm );
void messageEmergencyStop( const std_msgs::Bool& flag);

ros::Subscriber<f1tenth_car::drive_values> sub_drive("drive_pwm", &messageDrive );    // Subscribe to drive_pwm topic sent by Jetson
ros::Subscriber<std_msgs::Bool> sub_stop("eStop", &messageEmergencyStop );            // Subscribe to eStop topic sent by Jetson


void setup() {
  // Need to produce PWM signals so we need to setup the PWM registers. This setup happens next.
  analogWriteFrequency(ESC_PIN, 100);         // Frequency at which PWM signals is generated.
  analogWriteFrequency(SERVO_PIN, 100);
  analogWriteResolution(16);                  // Resolution for the PWM signal
  analogWrite(ESC_PIN, pwm_center_value);     // Setup zero velocity and steering.
  analogWrite(SERVO_PIN, pwm_center_value);

  nh.initNode();                              // intialize ROS node
  nh.subscribe(sub_drive);                    // start the subscribers.
  nh.subscribe(sub_stop);

  nh.advertise(chatter);                      // start the publisher..can be used for debugging.
}


void loop() {
  nh.spinOnce();
}


void messageDrive( const f1tenth_car::drive_values& pwm ) {

  if (flagStop == false) {
    str_msg.data = pwm.pwm_drive;
    chatter.publish( &str_msg );

    // Saturate and write pwm value to drive pin
    if (pwm.pwm_drive < pwm_lowerlimit) {
      analogWrite(ESC_PIN, pwm_lowerlimit);
    } else if (pwm.pwm_drive > pwm_upperlimit) {
      analogWrite(ESC_PIN, pwm_upperlimit);
    } else {
      analogWrite(ESC_PIN, pwm.pwm_drive);
    }

    // Saturate and write pwm value to steering servo
    if (pwm.pwm_angle < pwm_lowerlimit) {
      analogWrite(SERVO_PIN, pwm_lowerlimit);
    } else if (pwm.pwm_angle > pwm_upperlimit) {
      analogWrite(SERVO_PIN, pwm_upperlimit);
    } else {
      analogWrite(SERVO_PIN, pwm.pwm_angle);
    }

  } else {
    // Emergency stop has been received
    analogWrite(ESC_PIN, pwm_center_value);
    analogWrite(SERVO_PIN, pwm_center_value);
  }
}


void messageEmergencyStop( const std_msgs::Bool& flag ) {
  flagStop = flag.data;
  // Stop motor and center steering if true was received on the eStop topic
  if (flagStop == true) {
    analogWrite(ESC_PIN, pwm_center_value);
    analogWrite(SERVO_PIN, pwm_center_value);
  }
}

