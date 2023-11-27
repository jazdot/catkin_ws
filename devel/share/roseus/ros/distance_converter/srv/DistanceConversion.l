;; Auto-generated. Do not edit!


(when (boundp 'distance_converter::DistanceConversion)
  (if (not (find-package "DISTANCE_CONVERTER"))
    (make-package "DISTANCE_CONVERTER"))
  (shadow 'DistanceConversion (find-package "DISTANCE_CONVERTER")))
(unless (find-package "DISTANCE_CONVERTER::DISTANCECONVERSION")
  (make-package "DISTANCE_CONVERTER::DISTANCECONVERSION"))
(unless (find-package "DISTANCE_CONVERTER::DISTANCECONVERSIONREQUEST")
  (make-package "DISTANCE_CONVERTER::DISTANCECONVERSIONREQUEST"))
(unless (find-package "DISTANCE_CONVERTER::DISTANCECONVERSIONRESPONSE")
  (make-package "DISTANCE_CONVERTER::DISTANCECONVERSIONRESPONSE"))

(in-package "ROS")





(defclass distance_converter::DistanceConversionRequest
  :super ros::object
  :slots (_distance_in_cm ))

(defmethod distance_converter::DistanceConversionRequest
  (:init
   (&key
    ((:distance_in_cm __distance_in_cm) 0.0)
    )
   (send-super :init)
   (setq _distance_in_cm (float __distance_in_cm))
   self)
  (:distance_in_cm
   (&optional __distance_in_cm)
   (if __distance_in_cm (setq _distance_in_cm __distance_in_cm)) _distance_in_cm)
  (:serialization-length
   ()
   (+
    ;; float64 _distance_in_cm
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance_in_cm
       (sys::poke _distance_in_cm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance_in_cm
     (setq _distance_in_cm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass distance_converter::DistanceConversionResponse
  :super ros::object
  :slots (_converted_distance_in_mm ))

(defmethod distance_converter::DistanceConversionResponse
  (:init
   (&key
    ((:converted_distance_in_mm __converted_distance_in_mm) 0.0)
    )
   (send-super :init)
   (setq _converted_distance_in_mm (float __converted_distance_in_mm))
   self)
  (:converted_distance_in_mm
   (&optional __converted_distance_in_mm)
   (if __converted_distance_in_mm (setq _converted_distance_in_mm __converted_distance_in_mm)) _converted_distance_in_mm)
  (:serialization-length
   ()
   (+
    ;; float64 _converted_distance_in_mm
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _converted_distance_in_mm
       (sys::poke _converted_distance_in_mm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _converted_distance_in_mm
     (setq _converted_distance_in_mm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass distance_converter::DistanceConversion
  :super ros::object
  :slots ())

(setf (get distance_converter::DistanceConversion :md5sum-) "f163c2866a2367d94281173af77bbba8")
(setf (get distance_converter::DistanceConversion :datatype-) "distance_converter/DistanceConversion")
(setf (get distance_converter::DistanceConversion :request) distance_converter::DistanceConversionRequest)
(setf (get distance_converter::DistanceConversion :response) distance_converter::DistanceConversionResponse)

(defmethod distance_converter::DistanceConversionRequest
  (:response () (instance distance_converter::DistanceConversionResponse :init)))

(setf (get distance_converter::DistanceConversionRequest :md5sum-) "f163c2866a2367d94281173af77bbba8")
(setf (get distance_converter::DistanceConversionRequest :datatype-) "distance_converter/DistanceConversionRequest")
(setf (get distance_converter::DistanceConversionRequest :definition-)
      "float64 distance_in_cm
---
float64 converted_distance_in_mm

")

(setf (get distance_converter::DistanceConversionResponse :md5sum-) "f163c2866a2367d94281173af77bbba8")
(setf (get distance_converter::DistanceConversionResponse :datatype-) "distance_converter/DistanceConversionResponse")
(setf (get distance_converter::DistanceConversionResponse :definition-)
      "float64 distance_in_cm
---
float64 converted_distance_in_mm

")



(provide :distance_converter/DistanceConversion "f163c2866a2367d94281173af77bbba8")


