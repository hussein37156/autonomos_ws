;; Auto-generated. Do not edit!


(when (boundp 'lab_1::my_msg)
  (if (not (find-package "LAB_1"))
    (make-package "LAB_1"))
  (shadow 'my_msg (find-package "LAB_1")))
(unless (find-package "LAB_1::MY_MSG")
  (make-package "LAB_1::MY_MSG"))

(in-package "ROS")
;;//! \htmlinclude my_msg.msg.html


(defclass lab_1::my_msg
  :super ros::object
  :slots (_name _time ))

(defmethod lab_1::my_msg
  (:init
   (&key
    ((:name __name) "")
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _time (float __time))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get lab_1::my_msg :md5sum-) "396d8602fa1b540681c4f10ef8f3fb75")
(setf (get lab_1::my_msg :datatype-) "lab_1/my_msg")
(setf (get lab_1::my_msg :definition-)
      "string name
float64 time


")



(provide :lab_1/my_msg "396d8602fa1b540681c4f10ef8f3fb75")


