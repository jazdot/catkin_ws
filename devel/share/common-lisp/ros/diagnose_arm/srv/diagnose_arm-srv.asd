
(cl:in-package :asdf)

(defsystem "diagnose_arm-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MotorStatus" :depends-on ("_package_MotorStatus"))
    (:file "_package_MotorStatus" :depends-on ("_package"))
  ))