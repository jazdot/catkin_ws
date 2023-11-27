
(cl:in-package :asdf)

(defsystem "swarm_robot_srv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "two_wheel_robot_update" :depends-on ("_package_two_wheel_robot_update"))
    (:file "_package_two_wheel_robot_update" :depends-on ("_package"))
  ))