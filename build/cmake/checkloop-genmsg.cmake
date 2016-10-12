# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "checkloop: 0 messages, 6 services")

set(MSG_I_FLAGS "-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Inav_msgs:/opt/ros/indigo/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(checkloop_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/SetMode.srv" NAME_WE)
add_custom_target(_checkloop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "checkloop" "/home/dxq/catkin_ws/src/checkloop/srv/SetMode.srv" ""
)

get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/LoadMap.srv" NAME_WE)
add_custom_target(_checkloop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "checkloop" "/home/dxq/catkin_ws/src/checkloop/srv/LoadMap.srv" "std_msgs/String"
)

get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/MatchClouds.srv" NAME_WE)
add_custom_target(_checkloop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "checkloop" "/home/dxq/catkin_ws/src/checkloop/srv/MatchClouds.srv" "sensor_msgs/PointField:geometry_msgs/Vector3:sensor_msgs/PointCloud2:geometry_msgs/Quaternion:geometry_msgs/Transform:std_msgs/Header"
)

get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/CorrectPose.srv" NAME_WE)
add_custom_target(_checkloop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "checkloop" "/home/dxq/catkin_ws/src/checkloop/srv/CorrectPose.srv" "geometry_msgs/Point:geometry_msgs/PoseWithCovariance:geometry_msgs/TwistWithCovariance:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Twist:nav_msgs/Odometry:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/GetBoundedMap.srv" NAME_WE)
add_custom_target(_checkloop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "checkloop" "/home/dxq/catkin_ws/src/checkloop/srv/GetBoundedMap.srv" "geometry_msgs/Point:sensor_msgs/PointField:sensor_msgs/PointCloud2:geometry_msgs/Quaternion:geometry_msgs/Pose:std_msgs/Header"
)

get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/GetMode.srv" NAME_WE)
add_custom_target(_checkloop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "checkloop" "/home/dxq/catkin_ws/src/checkloop/srv/GetMode.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/GetBoundedMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/checkloop
)
_generate_srv_cpp(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/LoadMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/checkloop
)
_generate_srv_cpp(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/MatchClouds.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/checkloop
)
_generate_srv_cpp(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/CorrectPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/indigo/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/checkloop
)
_generate_srv_cpp(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/SetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/checkloop
)
_generate_srv_cpp(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/GetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/checkloop
)

### Generating Module File
_generate_module_cpp(checkloop
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/checkloop
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(checkloop_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(checkloop_generate_messages checkloop_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/SetMode.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_cpp _checkloop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/LoadMap.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_cpp _checkloop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/MatchClouds.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_cpp _checkloop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/CorrectPose.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_cpp _checkloop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/GetBoundedMap.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_cpp _checkloop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/GetMode.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_cpp _checkloop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(checkloop_gencpp)
add_dependencies(checkloop_gencpp checkloop_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS checkloop_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/GetBoundedMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/checkloop
)
_generate_srv_lisp(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/LoadMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/checkloop
)
_generate_srv_lisp(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/MatchClouds.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/checkloop
)
_generate_srv_lisp(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/CorrectPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/indigo/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/checkloop
)
_generate_srv_lisp(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/SetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/checkloop
)
_generate_srv_lisp(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/GetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/checkloop
)

### Generating Module File
_generate_module_lisp(checkloop
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/checkloop
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(checkloop_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(checkloop_generate_messages checkloop_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/SetMode.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_lisp _checkloop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/LoadMap.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_lisp _checkloop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/MatchClouds.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_lisp _checkloop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/CorrectPose.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_lisp _checkloop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/GetBoundedMap.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_lisp _checkloop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/GetMode.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_lisp _checkloop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(checkloop_genlisp)
add_dependencies(checkloop_genlisp checkloop_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS checkloop_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/GetBoundedMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/checkloop
)
_generate_srv_py(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/LoadMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/checkloop
)
_generate_srv_py(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/MatchClouds.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/checkloop
)
_generate_srv_py(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/CorrectPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/indigo/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/checkloop
)
_generate_srv_py(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/SetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/checkloop
)
_generate_srv_py(checkloop
  "/home/dxq/catkin_ws/src/checkloop/srv/GetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/checkloop
)

### Generating Module File
_generate_module_py(checkloop
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/checkloop
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(checkloop_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(checkloop_generate_messages checkloop_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/SetMode.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_py _checkloop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/LoadMap.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_py _checkloop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/MatchClouds.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_py _checkloop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/CorrectPose.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_py _checkloop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/GetBoundedMap.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_py _checkloop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dxq/catkin_ws/src/checkloop/srv/GetMode.srv" NAME_WE)
add_dependencies(checkloop_generate_messages_py _checkloop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(checkloop_genpy)
add_dependencies(checkloop_genpy checkloop_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS checkloop_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/checkloop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/checkloop
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(checkloop_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(checkloop_generate_messages_cpp nav_msgs_generate_messages_cpp)
add_dependencies(checkloop_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(checkloop_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(checkloop_generate_messages_cpp actionlib_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/checkloop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/checkloop
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(checkloop_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(checkloop_generate_messages_lisp nav_msgs_generate_messages_lisp)
add_dependencies(checkloop_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(checkloop_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(checkloop_generate_messages_lisp actionlib_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/checkloop)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/checkloop\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/checkloop
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(checkloop_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(checkloop_generate_messages_py nav_msgs_generate_messages_py)
add_dependencies(checkloop_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(checkloop_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(checkloop_generate_messages_py actionlib_msgs_generate_messages_py)
