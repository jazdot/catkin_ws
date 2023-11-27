;; Auto-generated. Do not edit!


(when (boundp 'swarm_robot_msg::two_wheel_robot)
  (if (not (find-package "SWARM_ROBOT_MSG"))
    (make-package "SWARM_ROBOT_MSG"))
  (shadow 'two_wheel_robot (find-package "SWARM_ROBOT_MSG")))
(unless (find-package "SWARM_ROBOT_MSG::TWO_WHEEL_ROBOT")
  (make-package "SWARM_ROBOT_MSG::TWO_WHEEL_ROBOT"))

(in-package "ROS")
;;//! \htmlinclude two_wheel_robot.msg.html


(defclass swarm_robot_msg::two_wheel_robot
  :super ros::object
  :slots (_index _x _y _orientation _left_wheel_vel _right_wheel_vel ))

(defmethod swarm_robot_msg::two_wheel_robot
  (:init
   (&key
    ((:index __index) (make-array 0 :initial-element 0 :element-type :integer))
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:orientation __orientation) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:left_wheel_vel __left_wheel_vel) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:right_wheel_vel __right_wheel_vel) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _index __index)
   (setq _x __x)
   (setq _y __y)
   (setq _orientation __orientation)
   (setq _left_wheel_vel __left_wheel_vel)
   (setq _right_wheel_vel __right_wheel_vel)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:left_wheel_vel
   (&optional __left_wheel_vel)
   (if __left_wheel_vel (setq _left_wheel_vel __left_wheel_vel)) _left_wheel_vel)
  (:right_wheel_vel
   (&optional __right_wheel_vel)
   (if __right_wheel_vel (setq _right_wheel_vel __right_wheel_vel)) _right_wheel_vel)
  (:serialization-length
   ()
   (+
    ;; int32[] _index
    (* 4    (length _index)) 4
    ;; float64[] _x
    (* 8    (length _x)) 4
    ;; float64[] _y
    (* 8    (length _y)) 4
    ;; float64[] _orientation
    (* 8    (length _orientation)) 4
    ;; float64[] _left_wheel_vel
    (* 8    (length _left_wheel_vel)) 4
    ;; float64[] _right_wheel_vel
    (* 8    (length _right_wheel_vel)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _index
     (write-long (length _index) s)
     (dotimes (i (length _index))
       (write-long (elt _index i) s)
       )
     ;; float64[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _orientation
     (write-long (length _orientation) s)
     (dotimes (i (length _orientation))
       (sys::poke (elt _orientation i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _left_wheel_vel
     (write-long (length _left_wheel_vel) s)
     (dotimes (i (length _left_wheel_vel))
       (sys::poke (elt _left_wheel_vel i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _right_wheel_vel
     (write-long (length _right_wheel_vel) s)
     (dotimes (i (length _right_wheel_vel))
       (sys::poke (elt _right_wheel_vel i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _index
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _index (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _index i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _orientation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _orientation (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _orientation i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _left_wheel_vel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_wheel_vel (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _left_wheel_vel i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _right_wheel_vel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_wheel_vel (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _right_wheel_vel i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get swarm_robot_msg::two_wheel_robot :md5sum-) "960dcd4f229cf2d627bb30845b3ae2f8")
(setf (get swarm_robot_msg::two_wheel_robot :datatype-) "swarm_robot_msg/two_wheel_robot")
(setf (get swarm_robot_msg::two_wheel_robot :definition-)
      "# message type to describe all information needed for current status of two wheel robots

# the dimensions of following array should be the same, each elements indicate a robot
int32[] index
float64[] x
float64[] y
float64[] orientation
float64[] left_wheel_vel
float64[] right_wheel_vel


")



(provide :swarm_robot_msg/two_wheel_robot "960dcd4f229cf2d627bb30845b3ae2f8")


