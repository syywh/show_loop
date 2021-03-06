// Generated by gencpp from file checkloop/CorrectPoseResponse.msg
// DO NOT EDIT!


#ifndef CHECKLOOP_MESSAGE_CORRECTPOSERESPONSE_H
#define CHECKLOOP_MESSAGE_CORRECTPOSERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace checkloop
{
template <class ContainerAllocator>
struct CorrectPoseResponse_
{
  typedef CorrectPoseResponse_<ContainerAllocator> Type;

  CorrectPoseResponse_()
    {
    }
  CorrectPoseResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::checkloop::CorrectPoseResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::checkloop::CorrectPoseResponse_<ContainerAllocator> const> ConstPtr;

}; // struct CorrectPoseResponse_

typedef ::checkloop::CorrectPoseResponse_<std::allocator<void> > CorrectPoseResponse;

typedef boost::shared_ptr< ::checkloop::CorrectPoseResponse > CorrectPoseResponsePtr;
typedef boost::shared_ptr< ::checkloop::CorrectPoseResponse const> CorrectPoseResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::checkloop::CorrectPoseResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::checkloop::CorrectPoseResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace checkloop

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::checkloop::CorrectPoseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::checkloop::CorrectPoseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::checkloop::CorrectPoseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::checkloop::CorrectPoseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::checkloop::CorrectPoseResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::checkloop::CorrectPoseResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::checkloop::CorrectPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::checkloop::CorrectPoseResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::checkloop::CorrectPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "checkloop/CorrectPoseResponse";
  }

  static const char* value(const ::checkloop::CorrectPoseResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::checkloop::CorrectPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
";
  }

  static const char* value(const ::checkloop::CorrectPoseResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::checkloop::CorrectPoseResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CorrectPoseResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::checkloop::CorrectPoseResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::checkloop::CorrectPoseResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // CHECKLOOP_MESSAGE_CORRECTPOSERESPONSE_H
