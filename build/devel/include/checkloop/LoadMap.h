// Generated by gencpp from file checkloop/LoadMap.msg
// DO NOT EDIT!


#ifndef CHECKLOOP_MESSAGE_LOADMAP_H
#define CHECKLOOP_MESSAGE_LOADMAP_H

#include <ros/service_traits.h>


#include <checkloop/LoadMapRequest.h>
#include <checkloop/LoadMapResponse.h>


namespace checkloop
{

struct LoadMap
{

typedef LoadMapRequest Request;
typedef LoadMapResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LoadMap
} // namespace checkloop


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::checkloop::LoadMap > {
  static const char* value()
  {
    return "716e25f9d9dc76ceba197f93cbf05dc7";
  }

  static const char* value(const ::checkloop::LoadMap&) { return value(); }
};

template<>
struct DataType< ::checkloop::LoadMap > {
  static const char* value()
  {
    return "checkloop/LoadMap";
  }

  static const char* value(const ::checkloop::LoadMap&) { return value(); }
};


// service_traits::MD5Sum< ::checkloop::LoadMapRequest> should match 
// service_traits::MD5Sum< ::checkloop::LoadMap > 
template<>
struct MD5Sum< ::checkloop::LoadMapRequest>
{
  static const char* value()
  {
    return MD5Sum< ::checkloop::LoadMap >::value();
  }
  static const char* value(const ::checkloop::LoadMapRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::checkloop::LoadMapRequest> should match 
// service_traits::DataType< ::checkloop::LoadMap > 
template<>
struct DataType< ::checkloop::LoadMapRequest>
{
  static const char* value()
  {
    return DataType< ::checkloop::LoadMap >::value();
  }
  static const char* value(const ::checkloop::LoadMapRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::checkloop::LoadMapResponse> should match 
// service_traits::MD5Sum< ::checkloop::LoadMap > 
template<>
struct MD5Sum< ::checkloop::LoadMapResponse>
{
  static const char* value()
  {
    return MD5Sum< ::checkloop::LoadMap >::value();
  }
  static const char* value(const ::checkloop::LoadMapResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::checkloop::LoadMapResponse> should match 
// service_traits::DataType< ::checkloop::LoadMap > 
template<>
struct DataType< ::checkloop::LoadMapResponse>
{
  static const char* value()
  {
    return DataType< ::checkloop::LoadMap >::value();
  }
  static const char* value(const ::checkloop::LoadMapResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CHECKLOOP_MESSAGE_LOADMAP_H
