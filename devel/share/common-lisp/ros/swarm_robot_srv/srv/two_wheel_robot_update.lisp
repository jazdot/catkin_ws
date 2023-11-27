; Auto-generated. Do not edit!


(cl:in-package swarm_robot_srv-srv)


;//! \htmlinclude two_wheel_robot_update-request.msg.html

(cl:defclass <two_wheel_robot_update-request> (roslisp-msg-protocol:ros-message)
  ((update_code
    :reader update_code
    :initarg :update_code
    :type cl:integer
    :initform 0)
   (add_mode
    :reader add_mode
    :initarg :add_mode
    :type cl:boolean
    :initform cl:nil)
   (half_range
    :reader half_range
    :initarg :half_range
    :type cl:float
    :initform 0.0)
   (position_2d
    :reader position_2d
    :initarg :position_2d
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass two_wheel_robot_update-request (<two_wheel_robot_update-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <two_wheel_robot_update-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'two_wheel_robot_update-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_robot_srv-srv:<two_wheel_robot_update-request> is deprecated: use swarm_robot_srv-srv:two_wheel_robot_update-request instead.")))

(cl:ensure-generic-function 'update_code-val :lambda-list '(m))
(cl:defmethod update_code-val ((m <two_wheel_robot_update-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_robot_srv-srv:update_code-val is deprecated.  Use swarm_robot_srv-srv:update_code instead.")
  (update_code m))

(cl:ensure-generic-function 'add_mode-val :lambda-list '(m))
(cl:defmethod add_mode-val ((m <two_wheel_robot_update-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_robot_srv-srv:add_mode-val is deprecated.  Use swarm_robot_srv-srv:add_mode instead.")
  (add_mode m))

(cl:ensure-generic-function 'half_range-val :lambda-list '(m))
(cl:defmethod half_range-val ((m <two_wheel_robot_update-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_robot_srv-srv:half_range-val is deprecated.  Use swarm_robot_srv-srv:half_range instead.")
  (half_range m))

(cl:ensure-generic-function 'position_2d-val :lambda-list '(m))
(cl:defmethod position_2d-val ((m <two_wheel_robot_update-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_robot_srv-srv:position_2d-val is deprecated.  Use swarm_robot_srv-srv:position_2d instead.")
  (position_2d m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<two_wheel_robot_update-request>)))
    "Constants for message type '<two_wheel_robot_update-request>"
  '((:CODE_DELETE . -1)
    (:CODE_DELETE_ALL . 0)
    (:CODE_ADD . 1)
    (:ADD_MODE_RANDOM . False)
    (:ADD_MODE_SPECIFIED . True))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'two_wheel_robot_update-request)))
    "Constants for message type 'two_wheel_robot_update-request"
  '((:CODE_DELETE . -1)
    (:CODE_DELETE_ALL . 0)
    (:CODE_ADD . 1)
    (:ADD_MODE_RANDOM . False)
    (:ADD_MODE_SPECIFIED . True))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <two_wheel_robot_update-request>) ostream)
  "Serializes a message object of type '<two_wheel_robot_update-request>"
  (cl:let* ((signed (cl:slot-value msg 'update_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'add_mode) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'half_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position_2d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'position_2d))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <two_wheel_robot_update-request>) istream)
  "Deserializes a message object of type '<two_wheel_robot_update-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'update_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'add_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'half_range) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position_2d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position_2d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<two_wheel_robot_update-request>)))
  "Returns string type for a service object of type '<two_wheel_robot_update-request>"
  "swarm_robot_srv/two_wheel_robot_updateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'two_wheel_robot_update-request)))
  "Returns string type for a service object of type 'two_wheel_robot_update-request"
  "swarm_robot_srv/two_wheel_robot_updateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<two_wheel_robot_update-request>)))
  "Returns md5sum for a message object of type '<two_wheel_robot_update-request>"
  "37c36975550b76d968b8b389672952f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'two_wheel_robot_update-request)))
  "Returns md5sum for a message object of type 'two_wheel_robot_update-request"
  "37c36975550b76d968b8b389672952f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<two_wheel_robot_update-request>)))
  "Returns full string definition for message of type '<two_wheel_robot_update-request>"
  (cl:format cl:nil "# service message to add or delete two wheel robot model in gazebo~%~%# service request how-to:~%# update_code >= CODE_ADD, add one robot~%    # add_mode == ADD_MODE_RANDOM, add this robot at random position~%        # specify the value of half_range~%    # add_mode == ADD_MODE_SPECIFIED, add this robot at specified position~%        # specify the value of position_2d~%# update_code == CODE_DELETE_ALL, delete all robots~%# update_code <= CODE_DELETE, delete robots a totoal number of abs(update_code)~%~%~%# request constants~%int32 CODE_DELETE = -1~%int32 CODE_DELETE_ALL = 0~%int32 CODE_ADD = 1~%# first letter of True and False should be capitalized~%bool ADD_MODE_RANDOM = False~%bool ADD_MODE_SPECIFIED = True~%# request fields~%# sign indicates add or delete, absolute value means quantity~%# 0 represents delete all~%int32 update_code~%bool add_mode~%# the distribution when randomly adding a robot~%float64 half_range~%# the position when specifically adding a robot~%float64[] position_2d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'two_wheel_robot_update-request)))
  "Returns full string definition for message of type 'two_wheel_robot_update-request"
  (cl:format cl:nil "# service message to add or delete two wheel robot model in gazebo~%~%# service request how-to:~%# update_code >= CODE_ADD, add one robot~%    # add_mode == ADD_MODE_RANDOM, add this robot at random position~%        # specify the value of half_range~%    # add_mode == ADD_MODE_SPECIFIED, add this robot at specified position~%        # specify the value of position_2d~%# update_code == CODE_DELETE_ALL, delete all robots~%# update_code <= CODE_DELETE, delete robots a totoal number of abs(update_code)~%~%~%# request constants~%int32 CODE_DELETE = -1~%int32 CODE_DELETE_ALL = 0~%int32 CODE_ADD = 1~%# first letter of True and False should be capitalized~%bool ADD_MODE_RANDOM = False~%bool ADD_MODE_SPECIFIED = True~%# request fields~%# sign indicates add or delete, absolute value means quantity~%# 0 represents delete all~%int32 update_code~%bool add_mode~%# the distribution when randomly adding a robot~%float64 half_range~%# the position when specifically adding a robot~%float64[] position_2d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <two_wheel_robot_update-request>))
  (cl:+ 0
     4
     1
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position_2d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <two_wheel_robot_update-request>))
  "Converts a ROS message object to a list"
  (cl:list 'two_wheel_robot_update-request
    (cl:cons ':update_code (update_code msg))
    (cl:cons ':add_mode (add_mode msg))
    (cl:cons ':half_range (half_range msg))
    (cl:cons ':position_2d (position_2d msg))
))
;//! \htmlinclude two_wheel_robot_update-response.msg.html

(cl:defclass <two_wheel_robot_update-response> (roslisp-msg-protocol:ros-message)
  ((response_code
    :reader response_code
    :initarg :response_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass two_wheel_robot_update-response (<two_wheel_robot_update-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <two_wheel_robot_update-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'two_wheel_robot_update-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_robot_srv-srv:<two_wheel_robot_update-response> is deprecated: use swarm_robot_srv-srv:two_wheel_robot_update-response instead.")))

(cl:ensure-generic-function 'response_code-val :lambda-list '(m))
(cl:defmethod response_code-val ((m <two_wheel_robot_update-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_robot_srv-srv:response_code-val is deprecated.  Use swarm_robot_srv-srv:response_code instead.")
  (response_code m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<two_wheel_robot_update-response>)))
    "Constants for message type '<two_wheel_robot_update-response>"
  '((:SUCCESS . 1)
    (:ADD_FAIL_NO_RESPONSE . 2)
    (:ADD_FAIL_TOO_CROWDED . 3)
    (:ADD_FAIL_OCCUPIED . 4)
    (:DELETE_FAIL_NO_RESPONSE . 5)
    (:DELETE_FAIL_EXCEED_QUANTITY . 6)
    (:FAIL_OTHER_REASONS . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'two_wheel_robot_update-response)))
    "Constants for message type 'two_wheel_robot_update-response"
  '((:SUCCESS . 1)
    (:ADD_FAIL_NO_RESPONSE . 2)
    (:ADD_FAIL_TOO_CROWDED . 3)
    (:ADD_FAIL_OCCUPIED . 4)
    (:DELETE_FAIL_NO_RESPONSE . 5)
    (:DELETE_FAIL_EXCEED_QUANTITY . 6)
    (:FAIL_OTHER_REASONS . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <two_wheel_robot_update-response>) ostream)
  "Serializes a message object of type '<two_wheel_robot_update-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'response_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <two_wheel_robot_update-response>) istream)
  "Deserializes a message object of type '<two_wheel_robot_update-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'response_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<two_wheel_robot_update-response>)))
  "Returns string type for a service object of type '<two_wheel_robot_update-response>"
  "swarm_robot_srv/two_wheel_robot_updateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'two_wheel_robot_update-response)))
  "Returns string type for a service object of type 'two_wheel_robot_update-response"
  "swarm_robot_srv/two_wheel_robot_updateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<two_wheel_robot_update-response>)))
  "Returns md5sum for a message object of type '<two_wheel_robot_update-response>"
  "37c36975550b76d968b8b389672952f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'two_wheel_robot_update-response)))
  "Returns md5sum for a message object of type 'two_wheel_robot_update-response"
  "37c36975550b76d968b8b389672952f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<two_wheel_robot_update-response>)))
  "Returns full string definition for message of type '<two_wheel_robot_update-response>"
  (cl:format cl:nil "# response constants~%uint8 SUCCESS = 1~%uint8 ADD_FAIL_NO_RESPONSE = 2~%uint8 ADD_FAIL_TOO_CROWDED = 3~%    # too crowded when adding a number of robots~%uint8 ADD_FAIL_OCCUPIED = 4~%    # position ocupied when adding one robot~%uint8 DELETE_FAIL_NO_RESPONSE = 5~%uint8 DELETE_FAIL_EXCEED_QUANTITY = 6~%uint8 FAIL_OTHER_REASONS = 7~%# response fields~%uint8 response_code~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'two_wheel_robot_update-response)))
  "Returns full string definition for message of type 'two_wheel_robot_update-response"
  (cl:format cl:nil "# response constants~%uint8 SUCCESS = 1~%uint8 ADD_FAIL_NO_RESPONSE = 2~%uint8 ADD_FAIL_TOO_CROWDED = 3~%    # too crowded when adding a number of robots~%uint8 ADD_FAIL_OCCUPIED = 4~%    # position ocupied when adding one robot~%uint8 DELETE_FAIL_NO_RESPONSE = 5~%uint8 DELETE_FAIL_EXCEED_QUANTITY = 6~%uint8 FAIL_OTHER_REASONS = 7~%# response fields~%uint8 response_code~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <two_wheel_robot_update-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <two_wheel_robot_update-response>))
  "Converts a ROS message object to a list"
  (cl:list 'two_wheel_robot_update-response
    (cl:cons ':response_code (response_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'two_wheel_robot_update)))
  'two_wheel_robot_update-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'two_wheel_robot_update)))
  'two_wheel_robot_update-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'two_wheel_robot_update)))
  "Returns string type for a service object of type '<two_wheel_robot_update>"
  "swarm_robot_srv/two_wheel_robot_update")