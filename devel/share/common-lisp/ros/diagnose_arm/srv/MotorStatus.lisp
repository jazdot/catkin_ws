; Auto-generated. Do not edit!


(cl:in-package diagnose_arm-srv)


;//! \htmlinclude MotorStatus-request.msg.html

(cl:defclass <MotorStatus-request> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MotorStatus-request (<MotorStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diagnose_arm-srv:<MotorStatus-request> is deprecated: use diagnose_arm-srv:MotorStatus-request instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <MotorStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diagnose_arm-srv:status-val is deprecated.  Use diagnose_arm-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorStatus-request>) ostream)
  "Serializes a message object of type '<MotorStatus-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorStatus-request>) istream)
  "Deserializes a message object of type '<MotorStatus-request>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorStatus-request>)))
  "Returns string type for a service object of type '<MotorStatus-request>"
  "diagnose_arm/MotorStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorStatus-request)))
  "Returns string type for a service object of type 'MotorStatus-request"
  "diagnose_arm/MotorStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorStatus-request>)))
  "Returns md5sum for a message object of type '<MotorStatus-request>"
  "3a0ea3b451699c4d47e8566fa83c9fa2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorStatus-request)))
  "Returns md5sum for a message object of type 'MotorStatus-request"
  "3a0ea3b451699c4d47e8566fa83c9fa2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorStatus-request>)))
  "Returns full string definition for message of type '<MotorStatus-request>"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorStatus-request)))
  "Returns full string definition for message of type 'MotorStatus-request"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorStatus-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorStatus-request
    (cl:cons ':status (status msg))
))
;//! \htmlinclude MotorStatus-response.msg.html

(cl:defclass <MotorStatus-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass MotorStatus-response (<MotorStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diagnose_arm-srv:<MotorStatus-response> is deprecated: use diagnose_arm-srv:MotorStatus-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MotorStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diagnose_arm-srv:message-val is deprecated.  Use diagnose_arm-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorStatus-response>) ostream)
  "Serializes a message object of type '<MotorStatus-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorStatus-response>) istream)
  "Deserializes a message object of type '<MotorStatus-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorStatus-response>)))
  "Returns string type for a service object of type '<MotorStatus-response>"
  "diagnose_arm/MotorStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorStatus-response)))
  "Returns string type for a service object of type 'MotorStatus-response"
  "diagnose_arm/MotorStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorStatus-response>)))
  "Returns md5sum for a message object of type '<MotorStatus-response>"
  "3a0ea3b451699c4d47e8566fa83c9fa2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorStatus-response)))
  "Returns md5sum for a message object of type 'MotorStatus-response"
  "3a0ea3b451699c4d47e8566fa83c9fa2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorStatus-response>)))
  "Returns full string definition for message of type '<MotorStatus-response>"
  (cl:format cl:nil "string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorStatus-response)))
  "Returns full string definition for message of type 'MotorStatus-response"
  (cl:format cl:nil "string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorStatus-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorStatus-response
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MotorStatus)))
  'MotorStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MotorStatus)))
  'MotorStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorStatus)))
  "Returns string type for a service object of type '<MotorStatus>"
  "diagnose_arm/MotorStatus")