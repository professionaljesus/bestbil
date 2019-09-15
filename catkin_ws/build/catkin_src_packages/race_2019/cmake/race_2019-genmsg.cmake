# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "race_2019: 2 messages, 0 services")

set(MSG_I_FLAGS "-Irace_2019:/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(race_2019_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg/pid_input.msg" NAME_WE)
add_custom_target(_race_2019_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "race_2019" "/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg/pid_input.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg/pid_param.msg" NAME_WE)
add_custom_target(_race_2019_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "race_2019" "/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg/pid_param.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(race_2019
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg/pid_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/race_2019
)
_generate_msg_cpp(race_2019
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg/pid_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/race_2019
)

### Generating Services

### Generating Module File
_generate_module_cpp(race_2019
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/race_2019
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(race_2019_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(race_2019_generate_messages race_2019_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg/pid_input.msg" NAME_WE)
add_dependencies(race_2019_generate_messages_cpp _race_2019_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg/pid_param.msg" NAME_WE)
add_dependencies(race_2019_generate_messages_cpp _race_2019_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(race_2019_gencpp)
add_dependencies(race_2019_gencpp race_2019_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS race_2019_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(race_2019
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg/pid_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/race_2019
)
_generate_msg_lisp(race_2019
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg/pid_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/race_2019
)

### Generating Services

### Generating Module File
_generate_module_lisp(race_2019
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/race_2019
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(race_2019_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(race_2019_generate_messages race_2019_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg/pid_input.msg" NAME_WE)
add_dependencies(race_2019_generate_messages_lisp _race_2019_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg/pid_param.msg" NAME_WE)
add_dependencies(race_2019_generate_messages_lisp _race_2019_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(race_2019_genlisp)
add_dependencies(race_2019_genlisp race_2019_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS race_2019_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(race_2019
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg/pid_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/race_2019
)
_generate_msg_py(race_2019
  "/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg/pid_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/race_2019
)

### Generating Services

### Generating Module File
_generate_module_py(race_2019
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/race_2019
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(race_2019_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(race_2019_generate_messages race_2019_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg/pid_input.msg" NAME_WE)
add_dependencies(race_2019_generate_messages_py _race_2019_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/catkin_src_packages/race_2019/msg/pid_param.msg" NAME_WE)
add_dependencies(race_2019_generate_messages_py _race_2019_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(race_2019_genpy)
add_dependencies(race_2019_genpy race_2019_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS race_2019_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/race_2019)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/race_2019
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(race_2019_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/race_2019)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/race_2019
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(race_2019_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/race_2019)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/race_2019\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/race_2019
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(race_2019_generate_messages_py std_msgs_generate_messages_py)
endif()
