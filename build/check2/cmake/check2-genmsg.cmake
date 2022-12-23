# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "check2: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icheck2:/home/test/catkin_ws/src/check2/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(check2_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/test/catkin_ws/src/check2/msg/my.msg" NAME_WE)
add_custom_target(_check2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "check2" "/home/test/catkin_ws/src/check2/msg/my.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(check2
  "/home/test/catkin_ws/src/check2/msg/my.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/check2
)

### Generating Services

### Generating Module File
_generate_module_cpp(check2
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/check2
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(check2_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(check2_generate_messages check2_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/test/catkin_ws/src/check2/msg/my.msg" NAME_WE)
add_dependencies(check2_generate_messages_cpp _check2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(check2_gencpp)
add_dependencies(check2_gencpp check2_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS check2_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(check2
  "/home/test/catkin_ws/src/check2/msg/my.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/check2
)

### Generating Services

### Generating Module File
_generate_module_eus(check2
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/check2
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(check2_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(check2_generate_messages check2_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/test/catkin_ws/src/check2/msg/my.msg" NAME_WE)
add_dependencies(check2_generate_messages_eus _check2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(check2_geneus)
add_dependencies(check2_geneus check2_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS check2_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(check2
  "/home/test/catkin_ws/src/check2/msg/my.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/check2
)

### Generating Services

### Generating Module File
_generate_module_lisp(check2
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/check2
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(check2_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(check2_generate_messages check2_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/test/catkin_ws/src/check2/msg/my.msg" NAME_WE)
add_dependencies(check2_generate_messages_lisp _check2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(check2_genlisp)
add_dependencies(check2_genlisp check2_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS check2_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(check2
  "/home/test/catkin_ws/src/check2/msg/my.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/check2
)

### Generating Services

### Generating Module File
_generate_module_nodejs(check2
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/check2
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(check2_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(check2_generate_messages check2_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/test/catkin_ws/src/check2/msg/my.msg" NAME_WE)
add_dependencies(check2_generate_messages_nodejs _check2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(check2_gennodejs)
add_dependencies(check2_gennodejs check2_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS check2_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(check2
  "/home/test/catkin_ws/src/check2/msg/my.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/check2
)

### Generating Services

### Generating Module File
_generate_module_py(check2
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/check2
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(check2_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(check2_generate_messages check2_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/test/catkin_ws/src/check2/msg/my.msg" NAME_WE)
add_dependencies(check2_generate_messages_py _check2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(check2_genpy)
add_dependencies(check2_genpy check2_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS check2_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/check2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/check2
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(check2_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/check2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/check2
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(check2_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/check2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/check2
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(check2_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/check2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/check2
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(check2_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/check2)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/check2\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/check2
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(check2_generate_messages_py std_msgs_generate_messages_py)
endif()
