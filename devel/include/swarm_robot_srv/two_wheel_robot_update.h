// Generated by gencpp from file swarm_robot_srv/two_wheel_robot_update.msg
// DO NOT EDIT!


#ifndef SWARM_ROBOT_SRV_MESSAGE_TWO_WHEEL_ROBOT_UPDATE_H
#define SWARM_ROBOT_SRV_MESSAGE_TWO_WHEEL_ROBOT_UPDATE_H

#include <ros/service_traits.h>


#include <swarm_robot_srv/two_wheel_robot_updateRequest.h>
#include <swarm_robot_srv/two_wheel_robot_updateResponse.h>


namespace swarm_robot_srv
{

struct two_wheel_robot_update
{

typedef two_wheel_robot_updateRequest Request;
typedef two_wheel_robot_updateResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct two_wheel_robot_update
} // namespace swarm_robot_srv


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::swarm_robot_srv::two_wheel_robot_update > {
  static const char* value()
  {
    return "37c36975550b76d968b8b389672952f5";
  }

  static const char* value(const ::swarm_robot_srv::two_wheel_robot_update&) { return value(); }
};

template<>
struct DataType< ::swarm_robot_srv::two_wheel_robot_update > {
  static const char* value()
  {
    return "swarm_robot_srv/two_wheel_robot_update";
  }

  static const char* value(const ::swarm_robot_srv::two_wheel_robot_update&) { return value(); }
};


// service_traits::MD5Sum< ::swarm_robot_srv::two_wheel_robot_updateRequest> should match
// service_traits::MD5Sum< ::swarm_robot_srv::two_wheel_robot_update >
template<>
struct MD5Sum< ::swarm_robot_srv::two_wheel_robot_updateRequest>
{
  static const char* value()
  {
    return MD5Sum< ::swarm_robot_srv::two_wheel_robot_update >::value();
  }
  static const char* value(const ::swarm_robot_srv::two_wheel_robot_updateRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::swarm_robot_srv::two_wheel_robot_updateRequest> should match
// service_traits::DataType< ::swarm_robot_srv::two_wheel_robot_update >
template<>
struct DataType< ::swarm_robot_srv::two_wheel_robot_updateRequest>
{
  static const char* value()
  {
    return DataType< ::swarm_robot_srv::two_wheel_robot_update >::value();
  }
  static const char* value(const ::swarm_robot_srv::two_wheel_robot_updateRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::swarm_robot_srv::two_wheel_robot_updateResponse> should match
// service_traits::MD5Sum< ::swarm_robot_srv::two_wheel_robot_update >
template<>
struct MD5Sum< ::swarm_robot_srv::two_wheel_robot_updateResponse>
{
  static const char* value()
  {
    return MD5Sum< ::swarm_robot_srv::two_wheel_robot_update >::value();
  }
  static const char* value(const ::swarm_robot_srv::two_wheel_robot_updateResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::swarm_robot_srv::two_wheel_robot_updateResponse> should match
// service_traits::DataType< ::swarm_robot_srv::two_wheel_robot_update >
template<>
struct DataType< ::swarm_robot_srv::two_wheel_robot_updateResponse>
{
  static const char* value()
  {
    return DataType< ::swarm_robot_srv::two_wheel_robot_update >::value();
  }
  static const char* value(const ::swarm_robot_srv::two_wheel_robot_updateResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SWARM_ROBOT_SRV_MESSAGE_TWO_WHEEL_ROBOT_UPDATE_H
