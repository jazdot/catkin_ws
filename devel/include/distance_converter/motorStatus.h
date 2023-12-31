// Generated by gencpp from file distance_converter/motorStatus.msg
// DO NOT EDIT!


#ifndef DISTANCE_CONVERTER_MESSAGE_MOTORSTATUS_H
#define DISTANCE_CONVERTER_MESSAGE_MOTORSTATUS_H

#include <ros/service_traits.h>


#include <distance_converter/motorStatusRequest.h>
#include <distance_converter/motorStatusResponse.h>


namespace distance_converter
{

struct motorStatus
{

typedef motorStatusRequest Request;
typedef motorStatusResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct motorStatus
} // namespace distance_converter


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::distance_converter::motorStatus > {
  static const char* value()
  {
    return "4fe5af303955c287688e7347e9b00278";
  }

  static const char* value(const ::distance_converter::motorStatus&) { return value(); }
};

template<>
struct DataType< ::distance_converter::motorStatus > {
  static const char* value()
  {
    return "distance_converter/motorStatus";
  }

  static const char* value(const ::distance_converter::motorStatus&) { return value(); }
};


// service_traits::MD5Sum< ::distance_converter::motorStatusRequest> should match
// service_traits::MD5Sum< ::distance_converter::motorStatus >
template<>
struct MD5Sum< ::distance_converter::motorStatusRequest>
{
  static const char* value()
  {
    return MD5Sum< ::distance_converter::motorStatus >::value();
  }
  static const char* value(const ::distance_converter::motorStatusRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::distance_converter::motorStatusRequest> should match
// service_traits::DataType< ::distance_converter::motorStatus >
template<>
struct DataType< ::distance_converter::motorStatusRequest>
{
  static const char* value()
  {
    return DataType< ::distance_converter::motorStatus >::value();
  }
  static const char* value(const ::distance_converter::motorStatusRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::distance_converter::motorStatusResponse> should match
// service_traits::MD5Sum< ::distance_converter::motorStatus >
template<>
struct MD5Sum< ::distance_converter::motorStatusResponse>
{
  static const char* value()
  {
    return MD5Sum< ::distance_converter::motorStatus >::value();
  }
  static const char* value(const ::distance_converter::motorStatusResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::distance_converter::motorStatusResponse> should match
// service_traits::DataType< ::distance_converter::motorStatus >
template<>
struct DataType< ::distance_converter::motorStatusResponse>
{
  static const char* value()
  {
    return DataType< ::distance_converter::motorStatus >::value();
  }
  static const char* value(const ::distance_converter::motorStatusResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DISTANCE_CONVERTER_MESSAGE_MOTORSTATUS_H
