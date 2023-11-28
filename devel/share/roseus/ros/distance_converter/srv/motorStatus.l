;; Auto-generated. Do not edit!


(when (boundp 'distance_converter::motorStatus)
  (if (not (find-package "DISTANCE_CONVERTER"))
    (make-package "DISTANCE_CONVERTER"))
  (shadow 'motorStatus (find-package "DISTANCE_CONVERTER")))
(unless (find-package "DISTANCE_CONVERTER::MOTORSTATUS")
  (make-package "DISTANCE_CONVERTER::MOTORSTATUS"))
(unless (find-package "DISTANCE_CONVERTER::MOTORSTATUSREQUEST")
  (make-package "DISTANCE_CONVERTER::MOTORSTATUSREQUEST"))
(unless (find-package "DISTANCE_CONVERTER::MOTORSTATUSRESPONSE")
  (make-package "DISTANCE_CONVERTER::MOTORSTATUSRESPONSE"))

(in-package "ROS")





(defclass distance_converter::motorStatusRequest
  :super ros::object
  :slots ())

(defmethod distance_converter::motorStatusRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass distance_converter::motorStatusResponse
  :super ros::object
  :slots (_status ))

(defmethod distance_converter::motorStatusResponse
  (:init
   (&key
    ((:status __status) "")
    )
   (send-super :init)
   (setq _status (string __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass distance_converter::motorStatus
  :super ros::object
  :slots ())

(setf (get distance_converter::motorStatus :md5sum-) "4fe5af303955c287688e7347e9b00278")
(setf (get distance_converter::motorStatus :datatype-) "distance_converter/motorStatus")
(setf (get distance_converter::motorStatus :request) distance_converter::motorStatusRequest)
(setf (get distance_converter::motorStatus :response) distance_converter::motorStatusResponse)

(defmethod distance_converter::motorStatusRequest
  (:response () (instance distance_converter::motorStatusResponse :init)))

(setf (get distance_converter::motorStatusRequest :md5sum-) "4fe5af303955c287688e7347e9b00278")
(setf (get distance_converter::motorStatusRequest :datatype-) "distance_converter/motorStatusRequest")
(setf (get distance_converter::motorStatusRequest :definition-)
      "---
string status

")

(setf (get distance_converter::motorStatusResponse :md5sum-) "4fe5af303955c287688e7347e9b00278")
(setf (get distance_converter::motorStatusResponse :datatype-) "distance_converter/motorStatusResponse")
(setf (get distance_converter::motorStatusResponse :definition-)
      "---
string status

")



(provide :distance_converter/motorStatus "4fe5af303955c287688e7347e9b00278")


