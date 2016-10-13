cmake_minimum_required(VERSION 2.8.3)
project(checkloop)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED 
roscpp rospy rosbag std_msgs geometry_msgs nav_msgs
tf tf2 tf_conversions message_filters map_msgs libpointmatcher_ros visualization_msgs
interactive_markers ethzasl_gridmap_2d message_generation libpointmatcher roslib)
find_package(libnabo REQUIRED)

find_package(Eigen3 REQUIRED)


add_service_files( FILES
CorrectPose.srv
GetBoundedMap.srv
GetMode.srv
LoadMap.srv
MatchClouds.srv
SetMode.srv
)



generate_messages(DEPENDENCIES sensor_msgs nav_msgs std_msgs geometry_msgs actionlib_msgs)

catkin_package (
	CATKIN_DEPENDS roscpp rospy rosbag std_msgs geometry_msgs nav_msgs
tf tf2 tf_conversions message_filters map_msgs libpointmatcher_ros ethzasl_gridmap_2d visualization_msgs interactive_markers 
message_runtime libpointmatcher libnabo
)

include_directories(include 
${catkin_INCLUDE_DIRS}
${EIGEN3_INCLUDE_DIR}
)
add_executable(checkloop src/checkLoop.cpp)

add_dependencies(checkloop ${PROJECT_NAME}_gencpp)
target_link_libraries(checkloop 
${catkin_LIBRARIES}
${G2O_LIBRARIES}
${EIGEN3_LIBS}
# libcxsparse.so
libg2o_ext_csparse.so
libg2o_core.so 
libg2o_stuff.so 
libg2o_types_slam3d.so 
libg2o_csparse_extension.so 
libg2o_solver_csparse.so  
)



