;; Auto-generated. Do not edit!


(when (boundp 'swarm_robot_srv::two_wheel_robot_update)
  (if (not (find-package "SWARM_ROBOT_SRV"))
    (make-package "SWARM_ROBOT_SRV"))
  (shadow 'two_wheel_robot_update (find-package "SWARM_ROBOT_SRV")))
(unless (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATE")
  (make-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATE"))
(unless (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATEREQUEST")
  (make-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATEREQUEST"))
(unless (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATERESPONSE")
  (make-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATERESPONSE"))

(in-package "ROS")





(intern "*CODE_DELETE*" (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATEREQUEST"))
(shadow '*CODE_DELETE* (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATEREQUEST"))
(defconstant swarm_robot_srv::two_wheel_robot_updateRequest::*CODE_DELETE* -1)
(intern "*CODE_DELETE_ALL*" (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATEREQUEST"))
(shadow '*CODE_DELETE_ALL* (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATEREQUEST"))
(defconstant swarm_robot_srv::two_wheel_robot_updateRequest::*CODE_DELETE_ALL* 0)
(intern "*CODE_ADD*" (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATEREQUEST"))
(shadow '*CODE_ADD* (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATEREQUEST"))
(defconstant swarm_robot_srv::two_wheel_robot_updateRequest::*CODE_ADD* 1)
(intern "*ADD_MODE_RANDOM*" (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATEREQUEST"))
(shadow '*ADD_MODE_RANDOM* (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATEREQUEST"))
(defconstant swarm_robot_srv::two_wheel_robot_updateRequest::*ADD_MODE_RANDOM* nil)
(intern "*ADD_MODE_SPECIFIED*" (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATEREQUEST"))
(shadow '*ADD_MODE_SPECIFIED* (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATEREQUEST"))
(defconstant swarm_robot_srv::two_wheel_robot_updateRequest::*ADD_MODE_SPECIFIED* t)

(defun swarm_robot_srv::two_wheel_robot_updateRequest-to-symbol (const)
  (cond
        ((= const -1) 'swarm_robot_srv::two_wheel_robot_updateRequest::*CODE_DELETE*)
        ((= const 0) 'swarm_robot_srv::two_wheel_robot_updateRequest::*CODE_DELETE_ALL*)
        ((= const 1) 'swarm_robot_srv::two_wheel_robot_updateRequest::*CODE_ADD*)
        (t nil)))

(defclass swarm_robot_srv::two_wheel_robot_updateRequest
  :super ros::object
  :slots (_update_code _add_mode _half_range _position_2d ))

(defmethod swarm_robot_srv::two_wheel_robot_updateRequest
  (:init
   (&key
    ((:update_code __update_code) 0)
    ((:add_mode __add_mode) nil)
    ((:half_range __half_range) 0.0)
    ((:position_2d __position_2d) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _update_code (round __update_code))
   (setq _add_mode __add_mode)
   (setq _half_range (float __half_range))
   (setq _position_2d __position_2d)
   self)
  (:update_code
   (&optional __update_code)
   (if __update_code (setq _update_code __update_code)) _update_code)
  (:add_mode
   (&optional (__add_mode :null))
   (if (not (eq __add_mode :null)) (setq _add_mode __add_mode)) _add_mode)
  (:half_range
   (&optional __half_range)
   (if __half_range (setq _half_range __half_range)) _half_range)
  (:position_2d
   (&optional __position_2d)
   (if __position_2d (setq _position_2d __position_2d)) _position_2d)
  (:serialization-length
   ()
   (+
    ;; int32 _update_code
    4
    ;; bool _add_mode
    1
    ;; float64 _half_range
    8
    ;; float64[] _position_2d
    (* 8    (length _position_2d)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _update_code
       (write-long _update_code s)
     ;; bool _add_mode
       (if _add_mode (write-byte -1 s) (write-byte 0 s))
     ;; float64 _half_range
       (sys::poke _half_range (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _position_2d
     (write-long (length _position_2d) s)
     (dotimes (i (length _position_2d))
       (sys::poke (elt _position_2d i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _update_code
     (setq _update_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _add_mode
     (setq _add_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _half_range
     (setq _half_range (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _position_2d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_2d (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_2d i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(intern "*SUCCESS*" (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATERESPONSE"))
(shadow '*SUCCESS* (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATERESPONSE"))
(defconstant swarm_robot_srv::two_wheel_robot_updateResponse::*SUCCESS* 1)
(intern "*ADD_FAIL_NO_RESPONSE*" (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATERESPONSE"))
(shadow '*ADD_FAIL_NO_RESPONSE* (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATERESPONSE"))
(defconstant swarm_robot_srv::two_wheel_robot_updateResponse::*ADD_FAIL_NO_RESPONSE* 2)
(intern "*ADD_FAIL_TOO_CROWDED*" (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATERESPONSE"))
(shadow '*ADD_FAIL_TOO_CROWDED* (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATERESPONSE"))
(defconstant swarm_robot_srv::two_wheel_robot_updateResponse::*ADD_FAIL_TOO_CROWDED* 3)
(intern "*ADD_FAIL_OCCUPIED*" (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATERESPONSE"))
(shadow '*ADD_FAIL_OCCUPIED* (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATERESPONSE"))
(defconstant swarm_robot_srv::two_wheel_robot_updateResponse::*ADD_FAIL_OCCUPIED* 4)
(intern "*DELETE_FAIL_NO_RESPONSE*" (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATERESPONSE"))
(shadow '*DELETE_FAIL_NO_RESPONSE* (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATERESPONSE"))
(defconstant swarm_robot_srv::two_wheel_robot_updateResponse::*DELETE_FAIL_NO_RESPONSE* 5)
(intern "*DELETE_FAIL_EXCEED_QUANTITY*" (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATERESPONSE"))
(shadow '*DELETE_FAIL_EXCEED_QUANTITY* (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATERESPONSE"))
(defconstant swarm_robot_srv::two_wheel_robot_updateResponse::*DELETE_FAIL_EXCEED_QUANTITY* 6)
(intern "*FAIL_OTHER_REASONS*" (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATERESPONSE"))
(shadow '*FAIL_OTHER_REASONS* (find-package "SWARM_ROBOT_SRV::TWO_WHEEL_ROBOT_UPDATERESPONSE"))
(defconstant swarm_robot_srv::two_wheel_robot_updateResponse::*FAIL_OTHER_REASONS* 7)

(defun swarm_robot_srv::two_wheel_robot_updateResponse-to-symbol (const)
  (cond
        ((= const 1) 'swarm_robot_srv::two_wheel_robot_updateResponse::*SUCCESS*)
        ((= const 2) 'swarm_robot_srv::two_wheel_robot_updateResponse::*ADD_FAIL_NO_RESPONSE*)
        ((= const 3) 'swarm_robot_srv::two_wheel_robot_updateResponse::*ADD_FAIL_TOO_CROWDED*)
        ((= const 4) 'swarm_robot_srv::two_wheel_robot_updateResponse::*ADD_FAIL_OCCUPIED*)
        ((= const 5) 'swarm_robot_srv::two_wheel_robot_updateResponse::*DELETE_FAIL_NO_RESPONSE*)
        ((= const 6) 'swarm_robot_srv::two_wheel_robot_updateResponse::*DELETE_FAIL_EXCEED_QUANTITY*)
        ((= const 7) 'swarm_robot_srv::two_wheel_robot_updateResponse::*FAIL_OTHER_REASONS*)
        (t nil)))

(defclass swarm_robot_srv::two_wheel_robot_updateResponse
  :super ros::object
  :slots (_response_code ))

(defmethod swarm_robot_srv::two_wheel_robot_updateResponse
  (:init
   (&key
    ((:response_code __response_code) 0)
    )
   (send-super :init)
   (setq _response_code (round __response_code))
   self)
  (:response_code
   (&optional __response_code)
   (if __response_code (setq _response_code __response_code)) _response_code)
  (:serialization-length
   ()
   (+
    ;; uint8 _response_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _response_code
       (write-byte _response_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _response_code
     (setq _response_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass swarm_robot_srv::two_wheel_robot_update
  :super ros::object
  :slots ())

(setf (get swarm_robot_srv::two_wheel_robot_update :md5sum-) "37c36975550b76d968b8b389672952f5")
(setf (get swarm_robot_srv::two_wheel_robot_update :datatype-) "swarm_robot_srv/two_wheel_robot_update")
(setf (get swarm_robot_srv::two_wheel_robot_update :request) swarm_robot_srv::two_wheel_robot_updateRequest)
(setf (get swarm_robot_srv::two_wheel_robot_update :response) swarm_robot_srv::two_wheel_robot_updateResponse)

(defmethod swarm_robot_srv::two_wheel_robot_updateRequest
  (:response () (instance swarm_robot_srv::two_wheel_robot_updateResponse :init)))

(setf (get swarm_robot_srv::two_wheel_robot_updateRequest :md5sum-) "37c36975550b76d968b8b389672952f5")
(setf (get swarm_robot_srv::two_wheel_robot_updateRequest :datatype-) "swarm_robot_srv/two_wheel_robot_updateRequest")
(setf (get swarm_robot_srv::two_wheel_robot_updateRequest :definition-)
      "# service message to add or delete two wheel robot model in gazebo

# service request how-to:
# update_code >= CODE_ADD, add one robot
    # add_mode == ADD_MODE_RANDOM, add this robot at random position
        # specify the value of half_range
    # add_mode == ADD_MODE_SPECIFIED, add this robot at specified position
        # specify the value of position_2d
# update_code == CODE_DELETE_ALL, delete all robots
# update_code <= CODE_DELETE, delete robots a totoal number of abs(update_code)


# request constants
int32 CODE_DELETE = -1
int32 CODE_DELETE_ALL = 0
int32 CODE_ADD = 1
# first letter of True and False should be capitalized
bool ADD_MODE_RANDOM = False
bool ADD_MODE_SPECIFIED = True
# request fields
# sign indicates add or delete, absolute value means quantity
# 0 represents delete all
int32 update_code
bool add_mode
# the distribution when randomly adding a robot
float64 half_range
# the position when specifically adding a robot
float64[] position_2d
---
# response constants
uint8 SUCCESS = 1
uint8 ADD_FAIL_NO_RESPONSE = 2
uint8 ADD_FAIL_TOO_CROWDED = 3
    # too crowded when adding a number of robots
uint8 ADD_FAIL_OCCUPIED = 4
    # position ocupied when adding one robot
uint8 DELETE_FAIL_NO_RESPONSE = 5
uint8 DELETE_FAIL_EXCEED_QUANTITY = 6
uint8 FAIL_OTHER_REASONS = 7
# response fields
uint8 response_code


")

(setf (get swarm_robot_srv::two_wheel_robot_updateResponse :md5sum-) "37c36975550b76d968b8b389672952f5")
(setf (get swarm_robot_srv::two_wheel_robot_updateResponse :datatype-) "swarm_robot_srv/two_wheel_robot_updateResponse")
(setf (get swarm_robot_srv::two_wheel_robot_updateResponse :definition-)
      "# service message to add or delete two wheel robot model in gazebo

# service request how-to:
# update_code >= CODE_ADD, add one robot
    # add_mode == ADD_MODE_RANDOM, add this robot at random position
        # specify the value of half_range
    # add_mode == ADD_MODE_SPECIFIED, add this robot at specified position
        # specify the value of position_2d
# update_code == CODE_DELETE_ALL, delete all robots
# update_code <= CODE_DELETE, delete robots a totoal number of abs(update_code)


# request constants
int32 CODE_DELETE = -1
int32 CODE_DELETE_ALL = 0
int32 CODE_ADD = 1
# first letter of True and False should be capitalized
bool ADD_MODE_RANDOM = False
bool ADD_MODE_SPECIFIED = True
# request fields
# sign indicates add or delete, absolute value means quantity
# 0 represents delete all
int32 update_code
bool add_mode
# the distribution when randomly adding a robot
float64 half_range
# the position when specifically adding a robot
float64[] position_2d
---
# response constants
uint8 SUCCESS = 1
uint8 ADD_FAIL_NO_RESPONSE = 2
uint8 ADD_FAIL_TOO_CROWDED = 3
    # too crowded when adding a number of robots
uint8 ADD_FAIL_OCCUPIED = 4
    # position ocupied when adding one robot
uint8 DELETE_FAIL_NO_RESPONSE = 5
uint8 DELETE_FAIL_EXCEED_QUANTITY = 6
uint8 FAIL_OTHER_REASONS = 7
# response fields
uint8 response_code


")



(provide :swarm_robot_srv/two_wheel_robot_update "37c36975550b76d968b8b389672952f5")


