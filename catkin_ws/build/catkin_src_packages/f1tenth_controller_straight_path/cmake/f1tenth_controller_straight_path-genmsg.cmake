# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "f1tenth_controller_straight_path: 2 messages, 0 services")

set(MSG_I_FLAGS "-If1tenth_controller_straight_path:/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(f1tenth_controller_straight_path_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg/pid_input.msg" NAME_WE)
add_custom_target(_f1tenth_controller_straight_path_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "f1tenth_controller_straight_path" "/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg/pid_input.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg/pid_param.msg" NAME_WE)
add_custom_target(_f1tenth_controller_straight_path_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "f1tenth_controller_straight_path" "/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg/pid_param.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(f1tenth_controller_straight_path
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg/pid_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/f1tenth_controller_straight_path
)
_generate_msg_cpp(f1tenth_controller_straight_path
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg/pid_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/f1tenth_controller_straight_path
)

### Generating Services

### Generating Module File
_generate_module_cpp(f1tenth_controller_straight_path
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/f1tenth_controller_straight_path
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(f1tenth_controller_straight_path_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(f1tenth_controller_straight_path_generate_messages f1tenth_controller_straight_path_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg/pid_input.msg" NAME_WE)
add_dependencies(f1tenth_controller_straight_path_generate_messages_cpp _f1tenth_controller_straight_path_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg/pid_param.msg" NAME_WE)
add_dependencies(f1tenth_controller_straight_path_generate_messages_cpp _f1tenth_controller_straight_path_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(f1tenth_controller_straight_path_gencpp)
add_dependencies(f1tenth_controller_straight_path_gencpp f1tenth_controller_straight_path_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS f1tenth_controller_straight_path_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(f1tenth_controller_straight_path
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg/pid_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/f1tenth_controller_straight_path
)
_generate_msg_lisp(f1tenth_controller_straight_path
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg/pid_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/f1tenth_controller_straight_path
)

### Generating Services

### Generating Module File
_generate_module_lisp(f1tenth_controller_straight_path
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/f1tenth_controller_straight_path
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(f1tenth_controller_straight_path_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(f1tenth_controller_straight_path_generate_messages f1tenth_controller_straight_path_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg/pid_input.msg" NAME_WE)
add_dependencies(f1tenth_controller_straight_path_generate_messages_lisp _f1tenth_controller_straight_path_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg/pid_param.msg" NAME_WE)
add_dependencies(f1tenth_controller_straight_path_generate_messages_lisp _f1tenth_controller_straight_path_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(f1tenth_controller_straight_path_genlisp)
add_dependencies(f1tenth_controller_straight_path_genlisp f1tenth_controller_straight_path_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS f1tenth_controller_straight_path_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(f1tenth_controller_straight_path
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg/pid_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/f1tenth_controller_straight_path
)
_generate_msg_py(f1tenth_controller_straight_path
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg/pid_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/f1tenth_controller_straight_path
)

### Generating Services

### Generating Module File
_generate_module_py(f1tenth_controller_straight_path
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/f1tenth_controller_straight_path
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(f1tenth_controller_straight_path_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(f1tenth_controller_straight_path_generate_messages f1tenth_controller_straight_path_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg/pid_input.msg" NAME_WE)
add_dependencies(f1tenth_controller_straight_path_generate_messages_py _f1tenth_controller_straight_path_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/f1tenth_controller_straight_path/msg/pid_param.msg" NAME_WE)
add_dependencies(f1tenth_controller_straight_path_generate_messages_py _f1tenth_controller_straight_path_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(f1tenth_controller_straight_path_genpy)
add_dependencies(f1tenth_controller_straight_path_genpy f1tenth_controller_straight_path_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS f1tenth_controller_straight_path_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/f1tenth_controller_straight_path)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/f1tenth_controller_straight_path
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(f1tenth_controller_straight_path_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/f1tenth_controller_straight_path)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/f1tenth_controller_straight_path
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(f1tenth_controller_straight_path_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/f1tenth_controller_straight_path)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/f1tenth_controller_straight_path\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/f1tenth_controller_straight_path
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(f1tenth_controller_straight_path_generate_messages_py sensor_msgs_generate_messages_py)
endif()
