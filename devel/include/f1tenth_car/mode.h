// Generated by gencpp from file f1tenth_car/mode.msg
// DO NOT EDIT!


#ifndef F1TENTH_CAR_MESSAGE_MODE_H
#define F1TENTH_CAR_MESSAGE_MODE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace f1tenth_car
{
template <class ContainerAllocator>
struct mode_
{
  typedef mode_<ContainerAllocator> Type;

  mode_()
    : mode(0)  {
    }
  mode_(const ContainerAllocator& _alloc)
    : mode(0)  {
  (void)_alloc;
    }



   typedef int32_t _mode_type;
  _mode_type mode;




  typedef boost::shared_ptr< ::f1tenth_car::mode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::f1tenth_car::mode_<ContainerAllocator> const> ConstPtr;

}; // struct mode_

typedef ::f1tenth_car::mode_<std::allocator<void> > mode;

typedef boost::shared_ptr< ::f1tenth_car::mode > modePtr;
typedef boost::shared_ptr< ::f1tenth_car::mode const> modeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::f1tenth_car::mode_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::f1tenth_car::mode_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace f1tenth_car

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'f1tenth_car': ['/home/ubuntu/git/GroupC/src/catkin_src_packages/f1tenth_car/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::f1tenth_car::mode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::f1tenth_car::mode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::f1tenth_car::mode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::f1tenth_car::mode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::f1tenth_car::mode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::f1tenth_car::mode_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::f1tenth_car::mode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ff63f6ea3c3e9b7504b2cb3ee0a09d92";
  }

  static const char* value(const ::f1tenth_car::mode_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xff63f6ea3c3e9b75ULL;
  static const uint64_t static_value2 = 0x04b2cb3ee0a09d92ULL;
};

template<class ContainerAllocator>
struct DataType< ::f1tenth_car::mode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f1tenth_car/mode";
  }

  static const char* value(const ::f1tenth_car::mode_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::f1tenth_car::mode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 mode\n\
";
  }

  static const char* value(const ::f1tenth_car::mode_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::f1tenth_car::mode_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct mode_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::f1tenth_car::mode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::f1tenth_car::mode_<ContainerAllocator>& v)
  {
    s << indent << "mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // F1TENTH_CAR_MESSAGE_MODE_H