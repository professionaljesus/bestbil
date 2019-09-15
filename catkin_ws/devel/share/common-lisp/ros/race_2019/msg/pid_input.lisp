; Auto-generated. Do not edit!


(cl:in-package race_2019-msg)


;//! \htmlinclude pid_input.msg.html

(cl:defclass <pid_input> (roslisp-msg-protocol:ros-message)
  ((wdr
    :reader wdr
    :initarg :wdr
    :type cl:float
    :initform 0.0)
   (wdl
    :reader wdl
    :initarg :wdl
    :type cl:float
    :initform 0.0)
   (dl
    :reader dl
    :initarg :dl
    :type cl:float
    :initform 0.0)
   (dfl
    :reader dfl
    :initarg :dfl
    :type cl:float
    :initform 0.0)
   (dfr
    :reader dfr
    :initarg :dfr
    :type cl:float
    :initform 0.0)
   (dr
    :reader dr
    :initarg :dr
    :type cl:float
    :initform 0.0))
)

(cl:defclass pid_input (<pid_input>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pid_input>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pid_input)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name race_2019-msg:<pid_input> is deprecated: use race_2019-msg:pid_input instead.")))

(cl:ensure-generic-function 'wdr-val :lambda-list '(m))
(cl:defmethod wdr-val ((m <pid_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader race_2019-msg:wdr-val is deprecated.  Use race_2019-msg:wdr instead.")
  (wdr m))

(cl:ensure-generic-function 'wdl-val :lambda-list '(m))
(cl:defmethod wdl-val ((m <pid_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader race_2019-msg:wdl-val is deprecated.  Use race_2019-msg:wdl instead.")
  (wdl m))

(cl:ensure-generic-function 'dl-val :lambda-list '(m))
(cl:defmethod dl-val ((m <pid_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader race_2019-msg:dl-val is deprecated.  Use race_2019-msg:dl instead.")
  (dl m))

(cl:ensure-generic-function 'dfl-val :lambda-list '(m))
(cl:defmethod dfl-val ((m <pid_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader race_2019-msg:dfl-val is deprecated.  Use race_2019-msg:dfl instead.")
  (dfl m))

(cl:ensure-generic-function 'dfr-val :lambda-list '(m))
(cl:defmethod dfr-val ((m <pid_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader race_2019-msg:dfr-val is deprecated.  Use race_2019-msg:dfr instead.")
  (dfr m))

(cl:ensure-generic-function 'dr-val :lambda-list '(m))
(cl:defmethod dr-val ((m <pid_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader race_2019-msg:dr-val is deprecated.  Use race_2019-msg:dr instead.")
  (dr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pid_input>) ostream)
  "Serializes a message object of type '<pid_input>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wdr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wdl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dfl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dfr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pid_input>) istream)
  "Deserializes a message object of type '<pid_input>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wdr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wdl) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dl) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dfl) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dfr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dr) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pid_input>)))
  "Returns string type for a message object of type '<pid_input>"
  "race_2019/pid_input")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pid_input)))
  "Returns string type for a message object of type 'pid_input"
  "race_2019/pid_input")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pid_input>)))
  "Returns md5sum for a message object of type '<pid_input>"
  "bbb538dc9d9e4255bee8560be6747083")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pid_input)))
  "Returns md5sum for a message object of type 'pid_input"
  "bbb538dc9d9e4255bee8560be6747083")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pid_input>)))
  "Returns full string definition for message of type '<pid_input>"
  (cl:format cl:nil "~%float32 wdr~%float32 wdl~%float32 dl~%float32 dfl~%float32 dfr~%float32 dr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pid_input)))
  "Returns full string definition for message of type 'pid_input"
  (cl:format cl:nil "~%float32 wdr~%float32 wdl~%float32 dl~%float32 dfl~%float32 dfr~%float32 dr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pid_input>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pid_input>))
  "Converts a ROS message object to a list"
  (cl:list 'pid_input
    (cl:cons ':wdr (wdr msg))
    (cl:cons ':wdl (wdl msg))
    (cl:cons ':dl (dl msg))
    (cl:cons ':dfl (dfl msg))
    (cl:cons ':dfr (dfr msg))
    (cl:cons ':dr (dr msg))
))
