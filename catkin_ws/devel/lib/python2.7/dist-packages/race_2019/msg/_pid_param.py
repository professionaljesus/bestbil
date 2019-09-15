# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from race_2019/pid_param.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class pid_param(genpy.Message):
  _md5sum = "92724b2750bafc1f0a00e32e7efe65aa"
  _type = "race_2019/pid_param"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 kp
float32 ki
float32 kd
float32 servo_offset
float32 alpha
float32 beta
float32 velocity
float32 lb

"""
  __slots__ = ['kp','ki','kd','servo_offset','alpha','beta','velocity','lb']
  _slot_types = ['float32','float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       kp,ki,kd,servo_offset,alpha,beta,velocity,lb

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(pid_param, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.kp is None:
        self.kp = 0.
      if self.ki is None:
        self.ki = 0.
      if self.kd is None:
        self.kd = 0.
      if self.servo_offset is None:
        self.servo_offset = 0.
      if self.alpha is None:
        self.alpha = 0.
      if self.beta is None:
        self.beta = 0.
      if self.velocity is None:
        self.velocity = 0.
      if self.lb is None:
        self.lb = 0.
    else:
      self.kp = 0.
      self.ki = 0.
      self.kd = 0.
      self.servo_offset = 0.
      self.alpha = 0.
      self.beta = 0.
      self.velocity = 0.
      self.lb = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_8f.pack(_x.kp, _x.ki, _x.kd, _x.servo_offset, _x.alpha, _x.beta, _x.velocity, _x.lb))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 32
      (_x.kp, _x.ki, _x.kd, _x.servo_offset, _x.alpha, _x.beta, _x.velocity, _x.lb,) = _struct_8f.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_8f.pack(_x.kp, _x.ki, _x.kd, _x.servo_offset, _x.alpha, _x.beta, _x.velocity, _x.lb))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 32
      (_x.kp, _x.ki, _x.kd, _x.servo_offset, _x.alpha, _x.beta, _x.velocity, _x.lb,) = _struct_8f.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_8f = struct.Struct("<8f")
