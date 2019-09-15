; Auto-generated. Do not edit!


(cl:in-package f1tenth_car-msg)


;//! \htmlinclude mode.msg.html

(cl:defclass <mode> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0))
)

(cl:defclass mode (<mode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name f1tenth_car-msg:<mode> is deprecated: use f1tenth_car-msg:mode instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <mode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f1tenth_car-msg:mode-val is deprecated.  Use f1tenth_car-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mode>) ostream)
  "Serializes a message object of type '<mode>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mode>) istream)
  "Deserializes a message object of type '<mode>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mode>)))
  "Returns string type for a message object of type '<mode>"
  "f1tenth_car/mode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mode)))
  "Returns string type for a message object of type 'mode"
  "f1tenth_car/mode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mode>)))
  "Returns md5sum for a message object of type '<mode>"
  "ff63f6ea3c3e9b7504b2cb3ee0a09d92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mode)))
  "Returns md5sum for a message object of type 'mode"
  "ff63f6ea3c3e9b7504b2cb3ee0a09d92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mode>)))
  "Returns full string definition for message of type '<mode>"
  (cl:format cl:nil "int32 mode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mode)))
  "Returns full string definition for message of type 'mode"
  (cl:format cl:nil "int32 mode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mode>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mode>))
  "Converts a ROS message object to a list"
  (cl:list 'mode
    (cl:cons ':mode (mode msg))
))
