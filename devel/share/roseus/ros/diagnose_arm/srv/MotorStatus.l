;; Auto-generated. Do not edit!


(when (boundp 'diagnose_arm::MotorStatus)
  (if (not (find-package "DIAGNOSE_ARM"))
    (make-package "DIAGNOSE_ARM"))
  (shadow 'MotorStatus (find-package "DIAGNOSE_ARM")))
(unless (find-package "DIAGNOSE_ARM::MOTORSTATUS")
  (make-package "DIAGNOSE_ARM::MOTORSTATUS"))
(unless (find-package "DIAGNOSE_ARM::MOTORSTATUSREQUEST")
  (make-package "DIAGNOSE_ARM::MOTORSTATUSREQUEST"))
(unless (find-package "DIAGNOSE_ARM::MOTORSTATUSRESPONSE")
  (make-package "DIAGNOSE_ARM::MOTORSTATUSRESPONSE"))

(in-package "ROS")





(defclass diagnose_arm::MotorStatusRequest
  :super ros::object
  :slots (_status ))

(defmethod diagnose_arm::MotorStatusRequest
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass diagnose_arm::MotorStatusResponse
  :super ros::object
  :slots (_message ))

(defmethod diagnose_arm::MotorStatusResponse
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass diagnose_arm::MotorStatus
  :super ros::object
  :slots ())

(setf (get diagnose_arm::MotorStatus :md5sum-) "3a0ea3b451699c4d47e8566fa83c9fa2")
(setf (get diagnose_arm::MotorStatus :datatype-) "diagnose_arm/MotorStatus")
(setf (get diagnose_arm::MotorStatus :request) diagnose_arm::MotorStatusRequest)
(setf (get diagnose_arm::MotorStatus :response) diagnose_arm::MotorStatusResponse)

(defmethod diagnose_arm::MotorStatusRequest
  (:response () (instance diagnose_arm::MotorStatusResponse :init)))

(setf (get diagnose_arm::MotorStatusRequest :md5sum-) "3a0ea3b451699c4d47e8566fa83c9fa2")
(setf (get diagnose_arm::MotorStatusRequest :datatype-) "diagnose_arm/MotorStatusRequest")
(setf (get diagnose_arm::MotorStatusRequest :definition-)
      "bool status
---
string message

")

(setf (get diagnose_arm::MotorStatusResponse :md5sum-) "3a0ea3b451699c4d47e8566fa83c9fa2")
(setf (get diagnose_arm::MotorStatusResponse :datatype-) "diagnose_arm/MotorStatusResponse")
(setf (get diagnose_arm::MotorStatusResponse :definition-)
      "bool status
---
string message

")



(provide :diagnose_arm/MotorStatus "3a0ea3b451699c4d47e8566fa83c9fa2")


