; Auto-generated. Do not edit!


(cl:in-package distance_converter-srv)


;//! \htmlinclude DistanceConversion-request.msg.html

(cl:defclass <DistanceConversion-request> (roslisp-msg-protocol:ros-message)
  ((distance_in_cm
    :reader distance_in_cm
    :initarg :distance_in_cm
    :type cl:float
    :initform 0.0))
)

(cl:defclass DistanceConversion-request (<DistanceConversion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DistanceConversion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DistanceConversion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name distance_converter-srv:<DistanceConversion-request> is deprecated: use distance_converter-srv:DistanceConversion-request instead.")))

(cl:ensure-generic-function 'distance_in_cm-val :lambda-list '(m))
(cl:defmethod distance_in_cm-val ((m <DistanceConversion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader distance_converter-srv:distance_in_cm-val is deprecated.  Use distance_converter-srv:distance_in_cm instead.")
  (distance_in_cm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DistanceConversion-request>) ostream)
  "Serializes a message object of type '<DistanceConversion-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_in_cm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DistanceConversion-request>) istream)
  "Deserializes a message object of type '<DistanceConversion-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_in_cm) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DistanceConversion-request>)))
  "Returns string type for a service object of type '<DistanceConversion-request>"
  "distance_converter/DistanceConversionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DistanceConversion-request)))
  "Returns string type for a service object of type 'DistanceConversion-request"
  "distance_converter/DistanceConversionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DistanceConversion-request>)))
  "Returns md5sum for a message object of type '<DistanceConversion-request>"
  "f163c2866a2367d94281173af77bbba8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DistanceConversion-request)))
  "Returns md5sum for a message object of type 'DistanceConversion-request"
  "f163c2866a2367d94281173af77bbba8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DistanceConversion-request>)))
  "Returns full string definition for message of type '<DistanceConversion-request>"
  (cl:format cl:nil "float64 distance_in_cm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DistanceConversion-request)))
  "Returns full string definition for message of type 'DistanceConversion-request"
  (cl:format cl:nil "float64 distance_in_cm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DistanceConversion-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DistanceConversion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DistanceConversion-request
    (cl:cons ':distance_in_cm (distance_in_cm msg))
))
;//! \htmlinclude DistanceConversion-response.msg.html

(cl:defclass <DistanceConversion-response> (roslisp-msg-protocol:ros-message)
  ((converted_distance_in_mm
    :reader converted_distance_in_mm
    :initarg :converted_distance_in_mm
    :type cl:float
    :initform 0.0))
)

(cl:defclass DistanceConversion-response (<DistanceConversion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DistanceConversion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DistanceConversion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name distance_converter-srv:<DistanceConversion-response> is deprecated: use distance_converter-srv:DistanceConversion-response instead.")))

(cl:ensure-generic-function 'converted_distance_in_mm-val :lambda-list '(m))
(cl:defmethod converted_distance_in_mm-val ((m <DistanceConversion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader distance_converter-srv:converted_distance_in_mm-val is deprecated.  Use distance_converter-srv:converted_distance_in_mm instead.")
  (converted_distance_in_mm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DistanceConversion-response>) ostream)
  "Serializes a message object of type '<DistanceConversion-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'converted_distance_in_mm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DistanceConversion-response>) istream)
  "Deserializes a message object of type '<DistanceConversion-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'converted_distance_in_mm) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DistanceConversion-response>)))
  "Returns string type for a service object of type '<DistanceConversion-response>"
  "distance_converter/DistanceConversionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DistanceConversion-response)))
  "Returns string type for a service object of type 'DistanceConversion-response"
  "distance_converter/DistanceConversionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DistanceConversion-response>)))
  "Returns md5sum for a message object of type '<DistanceConversion-response>"
  "f163c2866a2367d94281173af77bbba8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DistanceConversion-response)))
  "Returns md5sum for a message object of type 'DistanceConversion-response"
  "f163c2866a2367d94281173af77bbba8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DistanceConversion-response>)))
  "Returns full string definition for message of type '<DistanceConversion-response>"
  (cl:format cl:nil "float64 converted_distance_in_mm~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DistanceConversion-response)))
  "Returns full string definition for message of type 'DistanceConversion-response"
  (cl:format cl:nil "float64 converted_distance_in_mm~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DistanceConversion-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DistanceConversion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DistanceConversion-response
    (cl:cons ':converted_distance_in_mm (converted_distance_in_mm msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DistanceConversion)))
  'DistanceConversion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DistanceConversion)))
  'DistanceConversion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DistanceConversion)))
  "Returns string type for a service object of type '<DistanceConversion>"
  "distance_converter/DistanceConversion")