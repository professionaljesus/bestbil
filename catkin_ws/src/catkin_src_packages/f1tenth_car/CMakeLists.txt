cmake_minimum_required(VERSION 2.8.3)
project(f1tenth_car)

find_package(catkin REQUIRED message_generation std_msgs)

## Generate messages in the 'msg' folder
add_message_files(
  FILES
  drive_param.msg
  drive_values.msg
  mode.msg
)

## Generate added messages and services with any dependencies listed here
generate_messages(
    DEPENDENCIES
    std_msgs
)

catkin_package(
#    INCLUDE_DIRS include
#    LIBRARIES f1tenth_car
#    CATKIN_DEPENDS other_catkin_pkg
#    DEPENDS system_lib
)

include_directories(
#    ${catkin_INCLUDE_DIRS}
)
