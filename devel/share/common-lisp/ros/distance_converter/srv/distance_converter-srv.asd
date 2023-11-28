
(cl:in-package :asdf)

(defsystem "distance_converter-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DistanceConversion" :depends-on ("_package_DistanceConversion"))
    (:file "_package_DistanceConversion" :depends-on ("_package"))
    (:file "motorStatus" :depends-on ("_package_motorStatus"))
    (:file "_package_motorStatus" :depends-on ("_package"))
  ))