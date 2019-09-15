This file contains commands to setup rosserial to communicate with Teensy via ROS framework. It also involves command for generation of custom messages headers which can be accessed by code in arduino.


# Setup Arduino with Teensy and rosserial:

1.  Setup arduino with Teensy package using link: https://www.pjrc.com/teensy/td_download.html


2.  Setup rosserial:
    See tutorial at: http://wiki.ros.org/rosserial_arduino/Tutorials/Arduino%20IDE%20Setup

    OR

    Install `rosserial` and `rosserial-arduino`. If you are not using ROS Indigo, replace indigo in the following commands with your version.
    ```shell
    sudo apt-get install ros-indigo-rosserial-arduino
    sudo apt-get install ros-indigo-rosserial
    ```

# Generate custom message header files
To setup libraries (use custom messages):
  1. Create build folder inside the package containing your custom messages.
  ```shell
  cd ~/catkin_ws/src/catkin_src_packages/f1tenth_car #Path to package containing your custom messages
  mkdir build
  cd build
  ```

  2. Run cmake on parent(package) folder and run make inside build folder.
  ```shell
  cmake ..
  make
  ```

  3. Source created setup file.
  ```shell
  source ./devel/setup.bash
  ```

  4. Change folder to the arduino library folder and remove old `ros_lib` folder. Alternatevely move the old `ros_lib` folder to another folder to keep a backup.
  ```shell
  cd ~/Arduino/libraries #Path to arduino library folder
  rm -rf ros_lib
  ```

  5. Run the rosserial libraries builder.
  ```shell
  rosrun rosserial_arduino make_libraries.py .
  ```

  Now, you should be able to find a folder with the same name as your package in the `ros__lib` folder containing the custom message header files.

4.  Once this is configured:
    Choose Teensy 3.2/3.1 in Tools menu of arduino software. Also make sure settings are configured to : "serial" and "96MHz".
    After choosing the appropriate port, your arduino should be ready to upload the firmware.
