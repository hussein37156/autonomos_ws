// Generated by gencpp from file lab_1/addition.msg
// DO NOT EDIT!


#ifndef LAB_1_MESSAGE_ADDITION_H
#define LAB_1_MESSAGE_ADDITION_H

#include <ros/service_traits.h>


#include <lab_1/additionRequest.h>
#include <lab_1/additionResponse.h>


namespace lab_1
{

struct addition
{

typedef additionRequest Request;
typedef additionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct addition
} // namespace lab_1


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::lab_1::addition > {
  static const char* value()
  {
    return "875493d2ec8f0bdc18c62960322c94b7";
  }

  static const char* value(const ::lab_1::addition&) { return value(); }
};

template<>
struct DataType< ::lab_1::addition > {
  static const char* value()
  {
    return "lab_1/addition";
  }

  static const char* value(const ::lab_1::addition&) { return value(); }
};


// service_traits::MD5Sum< ::lab_1::additionRequest> should match
// service_traits::MD5Sum< ::lab_1::addition >
template<>
struct MD5Sum< ::lab_1::additionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::lab_1::addition >::value();
  }
  static const char* value(const ::lab_1::additionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::lab_1::additionRequest> should match
// service_traits::DataType< ::lab_1::addition >
template<>
struct DataType< ::lab_1::additionRequest>
{
  static const char* value()
  {
    return DataType< ::lab_1::addition >::value();
  }
  static const char* value(const ::lab_1::additionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::lab_1::additionResponse> should match
// service_traits::MD5Sum< ::lab_1::addition >
template<>
struct MD5Sum< ::lab_1::additionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::lab_1::addition >::value();
  }
  static const char* value(const ::lab_1::additionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::lab_1::additionResponse> should match
// service_traits::DataType< ::lab_1::addition >
template<>
struct DataType< ::lab_1::additionResponse>
{
  static const char* value()
  {
    return DataType< ::lab_1::addition >::value();
  }
  static const char* value(const ::lab_1::additionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LAB_1_MESSAGE_ADDITION_H