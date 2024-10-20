
(cl:in-package :asdf)

(defsystem "lab_1-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "addition" :depends-on ("_package_addition"))
    (:file "_package_addition" :depends-on ("_package"))
    (:file "turtle_velocity" :depends-on ("_package_turtle_velocity"))
    (:file "_package_turtle_velocity" :depends-on ("_package"))
  ))