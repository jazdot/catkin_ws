; Auto-generated. Do not edit!


(cl:in-package distance_converter-srv)


;//! \htmlinclude motorStatus-request.msg.html

(cl:defclass <motorStatus-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass motorStatus-request (<motorStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motorStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motorStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name distance_converter-srv:<motorStatus-request> is deprecated: use distance_converter-srv:motorStatus-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motorStatus-request>) ostream)
  "Serializes a message object of type '<motorStatus-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motorStatus-request>) istream)
  "Deserializes a message object of type '<motorStatus-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motorStatus-request>)))
  "Returns string type for a service object of type '<motorStatus-request>"
  "distance_converter/motorStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motorStatus-request)))
  "Returns string type for a service object of type 'motorStatus-request"
  "distance_converter/motorStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motorStatus-request>)))
  "Returns md5sum for a message object of type '<motorStatus-request>"
  "4fe5af303955c287688e7347e9b00278")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motorStatus-request)))
  "Returns md5sum for a message object of type 'motorStatus-request"
  "4fe5af303955c287688e7347e9b00278")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motorStatus-request>)))
  "Returns full string definition for message of type '<motorStatus-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motorStatus-request)))
  "Returns full string definition for message of type 'motorStatus-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motorStatus-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motorStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'motorStatus-request
))
;//! \htmlinclude motorStatus-response.msg.html

(cl:defclass <motorStatus-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass motorStatus-response (<motorStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motorStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motorStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name distance_converter-srv:<motorStatus-response> is deprecated: use distance_converter-srv:motorStatus-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <motorStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader distance_converter-srv:status-val is deprecated.  Use distance_converter-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motorStatus-response>) ostream)
  "Serializes a message object of type '<motorStatus-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motorStatus-response>) istream)
  "Deserializes a message object of type '<motorStatus-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motorStatus-response>)))
  "Returns string type for a service object of type '<motorStatus-response>"
  "distance_converter/motorStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motorStatus-response)))
  "Returns string type for a service object of type 'motorStatus-response"
  "distance_converter/motorStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motorStatus-response>)))
  "Returns md5sum for a message object of type '<motorStatus-response>"
  "4fe5af303955c287688e7347e9b00278")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motorStatus-response)))
  "Returns md5sum for a message object of type 'motorStatus-response"
  "4fe5af303955c287688e7347e9b00278")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motorStatus-response>)))
  "Returns full string definition for message of type '<motorStatus-response>"
  (cl:format cl:nil "string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motorStatus-response)))
  "Returns full string definition for message of type 'motorStatus-response"
  (cl:format cl:nil "string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motorStatus-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motorStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'motorStatus-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'motorStatus)))
  'motorStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'motorStatus)))
  'motorStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motorStatus)))
  "Returns string type for a service object of type '<motorStatus>"
  "distance_converter/motorStatus")