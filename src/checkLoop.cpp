#include "pointmatcher/PointMatcher.h"
#include <iostream>
#include <fstream>
#include "ros/ros.h"
// #include "Frame.h"


#include <visualization_msgs/Marker.h>

#include "pointmatcher/Registrar.h"
#include <cassert>



#include "pointmatcher/PointMatcher.h"
#include "pointmatcher/Timer.h"

#include "nabo/nabo.h"

#include "ros/ros.h"
#include "ros/console.h"
#include "ros/package.h"

#include "pointmatcher_ros/point_cloud.h"
#include "pointmatcher_ros/transform.h"

// #include "bits/unique_ptr.h"
#include "boost/thread/future.hpp"
#include <boost/graph/graph_concepts.hpp>

#include "nav_msgs/Odometry.h"
#include "tf/transform_broadcaster.h"
#include "tf_conversions/tf_eigen.h"
#include "tf/transform_listener.h"
#include "eigen_conversions/eigen_msg.h"
#include "pointmatcher_ros/get_params_from_server.h"

typedef PointMatcher<float> PM;
typedef PM::DataPoints DP;
typedef PM::Parameters Parameters;

using namespace std;
int main(int argc, char *argv[])
{
	ros::init(argc, argv, "testLoop");
	ros::start();
	
	ros::NodeHandle n;
	
	ros::Publisher BcurrentDPPublisher;
	ros::Publisher BCandidateDPPublisher;
	ros::Publisher ACurrentDPPublisher;
	ros::Publisher ACandidateDPPublisher;
	
	BcurrentDPPublisher = n.advertise<sensor_msgs::PointCloud2>("BcurrentDPP", 2, true);
	BCandidateDPPublisher = n.advertise<sensor_msgs::PointCloud2>("BCandidateDP", 2, true);
	ACurrentDPPublisher = n.advertise<sensor_msgs::PointCloud2>("ACurrentDP", 2, true);
	ACandidateDPPublisher= n.advertise<sensor_msgs::PointCloud2>("ACandidateDP", 2, true);
	
	int num = getParam<int>("Num", 1);
// 	scanf("%d",&num);

		string homename = ros::package::getPath("velodyne_slam")+"/";
		stringstream sc;
		sc<<homename<<"PLY/Current"<<num<<".vtk";
	DP currentDP = DP::load(sc.str());
		stringstream sca;
		sca<<homename<<"PLY/Candidate"<<num<<".vtk";
	DP CandidateDP = DP::load(sca.str());

	
	
// 	cerr<<"q"<<endl;
// 	
	stringstream sT;
	sT<<homename<<"Log/OptimizedCu_Ca"<<num<<".txt";
	ifstream fT;
	fT.open(sT.str().c_str());

	PM::TransformationParameters BCurrentT(PM::TransformationParameters::Identity(4, 4)) ;
	PM::TransformationParameters BCandidateT(PM::TransformationParameters::Identity(4, 4)) ;
	PM::TransformationParameters ACurrentT(PM::TransformationParameters::Identity(4, 4)) ;
	PM::TransformationParameters ACandidateT(PM::TransformationParameters::Identity(4, 4)) ;
	for(int i = 0;i < 4; i++)
	{
		double a[4];
		fT >> a[0]>>a[1]>> a[2]>>a[3];
// 		cerr<<a[0];
// 		BCurrentT<<(double)a[0],(double)a[1],(double)a[2],(double)a[3];
		BCurrentT(i,0) = a[0];	BCurrentT(i,1) = a[1];	BCurrentT(i,2) = a[2];	BCurrentT(i,3) = a[3];
	}
	for(int i = 0;i < 4; i++)
	{
		float a[4];
		fT >> a[0]>>a[1]>> a[2]>>a[3];
		BCandidateT(i,0) = a[0];	BCandidateT(i,1) = a[1];	BCandidateT(i,2) = a[2];	BCandidateT(i,3) = a[3];
	}
	for(int i = 0;i < 4; i++)
	{
		float a[4];
		fT >> a[0]>>a[1]>> a[2]>>a[3];
		ACurrentT(i,0) = a[0];	ACurrentT(i,1) = a[1];	ACurrentT(i,2) = a[2];	ACurrentT(i,3) = a[3];
	}
	for(int i = 0;i < 4; i++)
	{
		float a[4];
		fT >> a[0]>>a[1]>> a[2]>>a[3];
		ACandidateT(i,0) = a[0];	ACandidateT(i,1) = a[1];	ACandidateT(i,2) = a[2];	ACandidateT(i,3) = a[3];
	}
cerr<<BCurrentT<<endl<<endl<<BCandidateT<<endl<<endl<<ACurrentT<<endl<<endl<<ACandidateT;
	PM::Transformation* rigidTrans;
	rigidTrans = PM::get().REG(Transformation).create("RigidTransformation");
	
	DP BCurrentDP,BCandidateDP,ACurrentDP, ACandidateDP;
	 BCurrentDP = rigidTrans->compute(currentDP,BCurrentT);
	 BCandidateDP = rigidTrans->compute(CandidateDP,BCandidateT);
	 ACurrentDP = rigidTrans->compute(currentDP,ACurrentT);
	 ACandidateDP = rigidTrans->compute(CandidateDP,ACandidateT);
	
	
	while(ros::ok())
	{
		BcurrentDPPublisher.publish(PointMatcher_ros::pointMatcherCloudToRosMsg<float>(BCurrentDP, "/map", ros::Time::now()));
		BCandidateDPPublisher.publish(PointMatcher_ros::pointMatcherCloudToRosMsg<float>(BCandidateDP, "/map", ros::Time::now()));
		ACurrentDPPublisher.publish(PointMatcher_ros::pointMatcherCloudToRosMsg<float>(ACurrentDP, "/map", ros::Time::now()));
		ACandidateDPPublisher.publish(PointMatcher_ros::pointMatcherCloudToRosMsg<float>(ACandidateDP, "/map", ros::Time::now()));
	}
	

}