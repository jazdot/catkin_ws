
(cl:in-package :asdf)

(defsystem "swarm_robot_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "two_wheel_robot" :depends-on ("_package_two_wheel_robot"))
    (:file "_package_two_wheel_robot" :depends-on ("_package"))
  ))