
(cl:in-package :asdf)

(defsystem "lab_2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "actionAction" :depends-on ("_package_actionAction"))
    (:file "_package_actionAction" :depends-on ("_package"))
    (:file "actionActionFeedback" :depends-on ("_package_actionActionFeedback"))
    (:file "_package_actionActionFeedback" :depends-on ("_package"))
    (:file "actionActionGoal" :depends-on ("_package_actionActionGoal"))
    (:file "_package_actionActionGoal" :depends-on ("_package"))
    (:file "actionActionResult" :depends-on ("_package_actionActionResult"))
    (:file "_package_actionActionResult" :depends-on ("_package"))
    (:file "actionFeedback" :depends-on ("_package_actionFeedback"))
    (:file "_package_actionFeedback" :depends-on ("_package"))
    (:file "actionGoal" :depends-on ("_package_actionGoal"))
    (:file "_package_actionGoal" :depends-on ("_package"))
    (:file "actionResult" :depends-on ("_package_actionResult"))
    (:file "_package_actionResult" :depends-on ("_package"))
  ))