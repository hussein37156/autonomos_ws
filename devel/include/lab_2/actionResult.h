// Generated by gencpp from file lab_2/actionResult.msg
// DO NOT EDIT!


#ifndef LAB_2_MESSAGE_ACTIONRESULT_H
#define LAB_2_MESSAGE_ACTIONRESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lab_2
{
template <class ContainerAllocator>
struct actionResult_
{
  typedef actionResult_<ContainerAllocator> Type;

  actionResult_()
    : response(0)  {
    }
  actionResult_(const ContainerAllocator& _alloc)
    : response(0)  {
  (void)_alloc;
    }



   typedef int64_t _response_type;
  _response_type response;





  typedef boost::shared_ptr< ::lab_2::actionResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lab_2::actionResult_<ContainerAllocator> const> ConstPtr;

}; // struct actionResult_

typedef ::lab_2::actionResult_<std::allocator<void> > actionResult;

typedef boost::shared_ptr< ::lab_2::actionResult > actionResultPtr;
typedef boost::shared_ptr< ::lab_2::actionResult const> actionResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lab_2::actionResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lab_2::actionResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lab_2::actionResult_<ContainerAllocator1> & lhs, const ::lab_2::actionResult_<ContainerAllocator2> & rhs)
{
  return lhs.response == rhs.response;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lab_2::actionResult_<ContainerAllocator1> & lhs, const ::lab_2::actionResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lab_2

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lab_2::actionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lab_2::actionResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab_2::actionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab_2::actionResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab_2::actionResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab_2::actionResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lab_2::actionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4bf37bc717f68787645077428bea3751";
  }

  static const char* value(const ::lab_2::actionResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4bf37bc717f68787ULL;
  static const uint64_t static_value2 = 0x645077428bea3751ULL;
};

template<class ContainerAllocator>
struct DataType< ::lab_2::actionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lab_2/actionResult";
  }

  static const char* value(const ::lab_2::actionResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lab_2::actionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"int64 response\n"
;
  }

  static const char* value(const ::lab_2::actionResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lab_2::actionResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.response);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct actionResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lab_2::actionResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lab_2::actionResult_<ContainerAllocator>& v)
  {
    s << indent << "response: ";
    Printer<int64_t>::stream(s, indent + "  ", v.response);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LAB_2_MESSAGE_ACTIONRESULT_H