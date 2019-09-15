; Auto-generated. Do not edit!


(cl:in-package race_2019-msg)


;//! \htmlinclude pid_param.msg.html

(cl:defclass <pid_param> (roslisp-msg-protocol:ros-message)
  ((kp
    :reader kp
    :initarg :kp
    :type cl:float
    :initform 0.0)
   (ki
    :reader ki
    :initarg :ki
    :type cl:float
    :initform 0.0)
   (kd
    :reader kd
    :initarg :kd
    :type cl:float
    :initform 0.0)
   (servo_offset
    :reader servo_offset
    :initarg :servo_offset
    :type cl:float
    :initform 0.0)
   (alpha
    :reader alpha
    :initarg :alpha
    :type cl:float
    :initform 0.0)
   (beta
    :reader beta
    :initarg :beta
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (lb
    :reader lb
    :initarg :lb
    :type cl:float
    :initform 0.0))
)

(cl:defclass pid_param (<pid_param>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pid_param>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pid_param)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name race_2019-msg:<pid_param> is deprecated: use race_2019-msg:pid_param instead.")))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <pid_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader race_2019-msg:kp-val is deprecated.  Use race_2019-msg:kp instead.")
  (kp m))

(cl:ensure-generic-function 'ki-val :lambda-list '(m))
(cl:defmethod ki-val ((m <pid_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader race_2019-msg:ki-val is deprecated.  Use race_2019-msg:ki instead.")
  (ki m))

(cl:ensure-generic-function 'kd-val :lambda-list '(m))
(cl:defmethod kd-val ((m <pid_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader race_2019-msg:kd-val is deprecated.  Use race_2019-msg:kd instead.")
  (kd m))

(cl:ensure-generic-function 'servo_offset-val :lambda-list '(m))
(cl:defmethod servo_offset-val ((m <pid_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader race_2019-msg:servo_offset-val is deprecated.  Use race_2019-msg:servo_offset instead.")
  (servo_offset m))

(cl:ensure-generic-function 'alpha-val :lambda-list '(m))
(cl:defmethod alpha-val ((m <pid_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader race_2019-msg:alpha-val is deprecated.  Use race_2019-msg:alpha instead.")
  (alpha m))

(cl:ensure-generic-function 'beta-val :lambda-list '(m))
(cl:defmethod beta-val ((m <pid_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader race_2019-msg:beta-val is deprecated.  Use race_2019-msg:beta instead.")
  (beta m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <pid_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader race_2019-msg:velocity-val is deprecated.  Use race_2019-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'lb-val :lambda-list '(m))
(cl:defmethod lb-val ((m <pid_param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader race_2019-msg:lb-val is deprecated.  Use race_2019-msg:lb instead.")
  (lb m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pid_param>) ostream)
  "Serializes a message object of type '<pid_param>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'kp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ki))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'kd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'servo_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'alpha))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'beta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lb))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pid_param>) istream)
  "Deserializes a message object of type '<pid_param>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ki) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'servo_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'alpha) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'beta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lb) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pid_param>)))
  "Returns string type for a message object of type '<pid_param>"
  "race_2019/pid_param")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pid_param)))
  "Returns string type for a message object of type 'pid_param"
  "race_2019/pid_param")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pid_param>)))
  "Returns md5sum for a message object of type '<pid_param>"
  "92724b2750bafc1f0a00e32e7efe65aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pid_param)))
  "Returns md5sum for a message object of type 'pid_param"
  "92724b2750bafc1f0a00e32e7efe65aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pid_param>)))
  "Returns full string definition for message of type '<pid_param>"
  (cl:format cl:nil "float32 kp~%float32 ki~%float32 kd~%float32 servo_offset~%float32 alpha~%float32 beta~%float32 velocity~%float32 lb~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pid_param)))
  "Returns full string definition for message of type 'pid_param"
  (cl:format cl:nil "float32 kp~%float32 ki~%float32 kd~%float32 servo_offset~%float32 alpha~%float32 beta~%float32 velocity~%float32 lb~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pid_param>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pid_param>))
  "Converts a ROS message object to a list"
  (cl:list 'pid_param
    (cl:cons ':kp (kp msg))
    (cl:cons ':ki (ki msg))
    (cl:cons ':kd (kd msg))
    (cl:cons ':servo_offset (servo_offset msg))
    (cl:cons ':alpha (alpha msg))
    (cl:cons ':beta (beta msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':lb (lb msg))
))
