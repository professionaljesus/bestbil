# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "keyboard_drive: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ikeyboard_drive:/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(keyboard_drive_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg/drive_values.msg" NAME_WE)
add_custom_target(_keyboard_drive_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "keyboard_drive" "/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg/drive_values.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg/drive_param.msg" NAME_WE)
add_custom_target(_keyboard_drive_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "keyboard_drive" "/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg/drive_param.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(keyboard_drive
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg/drive_values.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/keyboard_drive
)
_generate_msg_cpp(keyboard_drive
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg/drive_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/keyboard_drive
)

### Generating Services

### Generating Module File
_generate_module_cpp(keyboard_drive
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/keyboard_drive
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(keyboard_drive_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(keyboard_drive_generate_messages keyboard_drive_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg/drive_values.msg" NAME_WE)
add_dependencies(keyboard_drive_generate_messages_cpp _keyboard_drive_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg/drive_param.msg" NAME_WE)
add_dependencies(keyboard_drive_generate_messages_cpp _keyboard_drive_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(keyboard_drive_gencpp)
add_dependencies(keyboard_drive_gencpp keyboard_drive_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS keyboard_drive_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(keyboard_drive
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg/drive_values.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/keyboard_drive
)
_generate_msg_lisp(keyboard_drive
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg/drive_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/keyboard_drive
)

### Generating Services

### Generating Module File
_generate_module_lisp(keyboard_drive
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/keyboard_drive
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(keyboard_drive_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(keyboard_drive_generate_messages keyboard_drive_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg/drive_values.msg" NAME_WE)
add_dependencies(keyboard_drive_generate_messages_lisp _keyboard_drive_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg/drive_param.msg" NAME_WE)
add_dependencies(keyboard_drive_generate_messages_lisp _keyboard_drive_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(keyboard_drive_genlisp)
add_dependencies(keyboard_drive_genlisp keyboard_drive_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS keyboard_drive_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(keyboard_drive
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg/drive_values.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/keyboard_drive
)
_generate_msg_py(keyboard_drive
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg/drive_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/keyboard_drive
)

### Generating Services

### Generating Module File
_generate_module_py(keyboard_drive
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/keyboard_drive
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(keyboard_drive_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(keyboard_drive_generate_messages keyboard_drive_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg/drive_values.msg" NAME_WE)
add_dependencies(keyboard_drive_generate_messages_py _keyboard_drive_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/keyboard_drive/msg/drive_param.msg" NAME_WE)
add_dependencies(keyboard_drive_generate_messages_py _keyboard_drive_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(keyboard_drive_genpy)
add_dependencies(keyboard_drive_genpy keyboard_drive_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS keyboard_drive_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/keyboard_drive)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/keyboard_drive
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(keyboard_drive_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/keyboard_drive)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/keyboard_drive
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(keyboard_drive_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/keyboard_drive)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/keyboard_drive\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/keyboard_drive
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(keyboard_drive_generate_messages_py std_msgs_generate_messages_py)
endif()
