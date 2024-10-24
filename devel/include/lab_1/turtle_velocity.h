// Generated by gencpp from file lab_1/turtle_velocity.msg
// DO NOT EDIT!


#ifndef LAB_1_MESSAGE_TURTLE_VELOCITY_H
#define LAB_1_MESSAGE_TURTLE_VELOCITY_H

#include <ros/service_traits.h>


#include <lab_1/turtle_velocityRequest.h>
#include <lab_1/turtle_velocityResponse.h>


namespace lab_1
{

struct turtle_velocity
{

typedef turtle_velocityRequest Request;
typedef turtle_velocityResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct turtle_velocity
} // namespace lab_1


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::lab_1::turtle_velocity > {
  static const char* value()
  {
    return "8dda380a8a55b18c7abd86610253a772";
  }

  static const char* value(const ::lab_1::turtle_velocity&) { return value(); }
};

template<>
struct DataType< ::lab_1::turtle_velocity > {
  static const char* value()
  {
    return "lab_1/turtle_velocity";
  }

  static const char* value(const ::lab_1::turtle_velocity&) { return value(); }
};


// service_traits::MD5Sum< ::lab_1::turtle_velocityRequest> should match
// service_traits::MD5Sum< ::lab_1::turtle_velocity >
template<>
struct MD5Sum< ::lab_1::turtle_velocityRequest>
{
  static const char* value()
  {
    return MD5Sum< ::lab_1::turtle_velocity >::value();
  }
  static const char* value(const ::lab_1::turtle_velocityRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::lab_1::turtle_velocityRequest> should match
// service_traits::DataType< ::lab_1::turtle_velocity >
template<>
struct DataType< ::lab_1::turtle_velocityRequest>
{
  static const char* value()
  {
    return DataType< ::lab_1::turtle_velocity >::value();
  }
  static const char* value(const ::lab_1::turtle_velocityRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::lab_1::turtle_velocityResponse> should match
// service_traits::MD5Sum< ::lab_1::turtle_velocity >
template<>
struct MD5Sum< ::lab_1::turtle_velocityResponse>
{
  static const char* value()
  {
    return MD5Sum< ::lab_1::turtle_velocity >::value();
  }
  static const char* value(const ::lab_1::turtle_velocityResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::lab_1::turtle_velocityResponse> should match
// service_traits::DataType< ::lab_1::turtle_velocity >
template<>
struct DataType< ::lab_1::turtle_velocityResponse>
{
  static const char* value()
  {
    return DataType< ::lab_1::turtle_velocity >::value();
  }
  static const char* value(const ::lab_1::turtle_velocityResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LAB_1_MESSAGE_TURTLE_VELOCITY_H
