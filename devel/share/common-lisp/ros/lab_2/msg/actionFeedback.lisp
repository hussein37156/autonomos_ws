; Auto-generated. Do not edit!


(cl:in-package lab_2-msg)


;//! \htmlinclude actionFeedback.msg.html

(cl:defclass <actionFeedback> (roslisp-msg-protocol:ros-message)
  ((feeddback
    :reader feeddback
    :initarg :feeddback
    :type cl:integer
    :initform 0))
)

(cl:defclass actionFeedback (<actionFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <actionFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'actionFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab_2-msg:<actionFeedback> is deprecated: use lab_2-msg:actionFeedback instead.")))

(cl:ensure-generic-function 'feeddback-val :lambda-list '(m))
(cl:defmethod feeddback-val ((m <actionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab_2-msg:feeddback-val is deprecated.  Use lab_2-msg:feeddback instead.")
  (feeddback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <actionFeedback>) ostream)
  "Serializes a message object of type '<actionFeedback>"
  (cl:let* ((signed (cl:slot-value msg 'feeddback)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <actionFeedback>) istream)
  "Deserializes a message object of type '<actionFeedback>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feeddback) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<actionFeedback>)))
  "Returns string type for a message object of type '<actionFeedback>"
  "lab_2/actionFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'actionFeedback)))
  "Returns string type for a message object of type 'actionFeedback"
  "lab_2/actionFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<actionFeedback>)))
  "Returns md5sum for a message object of type '<actionFeedback>"
  "77e2688e9a23836b8b093bb09e37e8cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'actionFeedback)))
  "Returns md5sum for a message object of type 'actionFeedback"
  "77e2688e9a23836b8b093bb09e37e8cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<actionFeedback>)))
  "Returns full string definition for message of type '<actionFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int64 feeddback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'actionFeedback)))
  "Returns full string definition for message of type 'actionFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int64 feeddback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <actionFeedback>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <actionFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'actionFeedback
    (cl:cons ':feeddback (feeddback msg))
))