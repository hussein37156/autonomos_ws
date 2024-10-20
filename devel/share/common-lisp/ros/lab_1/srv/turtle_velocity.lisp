; Auto-generated. Do not edit!


(cl:in-package lab_1-srv)


;//! \htmlinclude turtle_velocity-request.msg.html

(cl:defclass <turtle_velocity-request> (roslisp-msg-protocol:ros-message)
  ((major
    :reader major
    :initarg :major
    :type cl:float
    :initform 0.0)
   (minor
    :reader minor
    :initarg :minor
    :type cl:float
    :initform 0.0)
   (omega
    :reader omega
    :initarg :omega
    :type cl:float
    :initform 0.0))
)

(cl:defclass turtle_velocity-request (<turtle_velocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtle_velocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtle_velocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab_1-srv:<turtle_velocity-request> is deprecated: use lab_1-srv:turtle_velocity-request instead.")))

(cl:ensure-generic-function 'major-val :lambda-list '(m))
(cl:defmethod major-val ((m <turtle_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab_1-srv:major-val is deprecated.  Use lab_1-srv:major instead.")
  (major m))

(cl:ensure-generic-function 'minor-val :lambda-list '(m))
(cl:defmethod minor-val ((m <turtle_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab_1-srv:minor-val is deprecated.  Use lab_1-srv:minor instead.")
  (minor m))

(cl:ensure-generic-function 'omega-val :lambda-list '(m))
(cl:defmethod omega-val ((m <turtle_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab_1-srv:omega-val is deprecated.  Use lab_1-srv:omega instead.")
  (omega m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtle_velocity-request>) ostream)
  "Serializes a message object of type '<turtle_velocity-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'major))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'minor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'omega))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtle_velocity-request>) istream)
  "Deserializes a message object of type '<turtle_velocity-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'major) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minor) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtle_velocity-request>)))
  "Returns string type for a service object of type '<turtle_velocity-request>"
  "lab_1/turtle_velocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtle_velocity-request)))
  "Returns string type for a service object of type 'turtle_velocity-request"
  "lab_1/turtle_velocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtle_velocity-request>)))
  "Returns md5sum for a message object of type '<turtle_velocity-request>"
  "8dda380a8a55b18c7abd86610253a772")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtle_velocity-request)))
  "Returns md5sum for a message object of type 'turtle_velocity-request"
  "8dda380a8a55b18c7abd86610253a772")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtle_velocity-request>)))
  "Returns full string definition for message of type '<turtle_velocity-request>"
  (cl:format cl:nil "float64 major~%float64 minor~%float64 omega~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtle_velocity-request)))
  "Returns full string definition for message of type 'turtle_velocity-request"
  (cl:format cl:nil "float64 major~%float64 minor~%float64 omega~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtle_velocity-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtle_velocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'turtle_velocity-request
    (cl:cons ':major (major msg))
    (cl:cons ':minor (minor msg))
    (cl:cons ':omega (omega msg))
))
;//! \htmlinclude turtle_velocity-response.msg.html

(cl:defclass <turtle_velocity-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass turtle_velocity-response (<turtle_velocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtle_velocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtle_velocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab_1-srv:<turtle_velocity-response> is deprecated: use lab_1-srv:turtle_velocity-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtle_velocity-response>) ostream)
  "Serializes a message object of type '<turtle_velocity-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtle_velocity-response>) istream)
  "Deserializes a message object of type '<turtle_velocity-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtle_velocity-response>)))
  "Returns string type for a service object of type '<turtle_velocity-response>"
  "lab_1/turtle_velocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtle_velocity-response)))
  "Returns string type for a service object of type 'turtle_velocity-response"
  "lab_1/turtle_velocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtle_velocity-response>)))
  "Returns md5sum for a message object of type '<turtle_velocity-response>"
  "8dda380a8a55b18c7abd86610253a772")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtle_velocity-response)))
  "Returns md5sum for a message object of type 'turtle_velocity-response"
  "8dda380a8a55b18c7abd86610253a772")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtle_velocity-response>)))
  "Returns full string definition for message of type '<turtle_velocity-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtle_velocity-response)))
  "Returns full string definition for message of type 'turtle_velocity-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtle_velocity-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtle_velocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'turtle_velocity-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'turtle_velocity)))
  'turtle_velocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'turtle_velocity)))
  'turtle_velocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtle_velocity)))
  "Returns string type for a service object of type '<turtle_velocity>"
  "lab_1/turtle_velocity")