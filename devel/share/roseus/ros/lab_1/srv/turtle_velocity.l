;; Auto-generated. Do not edit!


(when (boundp 'lab_1::turtle_velocity)
  (if (not (find-package "LAB_1"))
    (make-package "LAB_1"))
  (shadow 'turtle_velocity (find-package "LAB_1")))
(unless (find-package "LAB_1::TURTLE_VELOCITY")
  (make-package "LAB_1::TURTLE_VELOCITY"))
(unless (find-package "LAB_1::TURTLE_VELOCITYREQUEST")
  (make-package "LAB_1::TURTLE_VELOCITYREQUEST"))
(unless (find-package "LAB_1::TURTLE_VELOCITYRESPONSE")
  (make-package "LAB_1::TURTLE_VELOCITYRESPONSE"))

(in-package "ROS")





(defclass lab_1::turtle_velocityRequest
  :super ros::object
  :slots (_major _minor _omega ))

(defmethod lab_1::turtle_velocityRequest
  (:init
   (&key
    ((:major __major) 0.0)
    ((:minor __minor) 0.0)
    ((:omega __omega) 0.0)
    )
   (send-super :init)
   (setq _major (float __major))
   (setq _minor (float __minor))
   (setq _omega (float __omega))
   self)
  (:major
   (&optional __major)
   (if __major (setq _major __major)) _major)
  (:minor
   (&optional __minor)
   (if __minor (setq _minor __minor)) _minor)
  (:omega
   (&optional __omega)
   (if __omega (setq _omega __omega)) _omega)
  (:serialization-length
   ()
   (+
    ;; float64 _major
    8
    ;; float64 _minor
    8
    ;; float64 _omega
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _major
       (sys::poke _major (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _minor
       (sys::poke _minor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omega
       (sys::poke _omega (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _major
     (setq _major (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _minor
     (setq _minor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omega
     (setq _omega (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass lab_1::turtle_velocityResponse
  :super ros::object
  :slots ())

(defmethod lab_1::turtle_velocityResponse
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

(defclass lab_1::turtle_velocity
  :super ros::object
  :slots ())

(setf (get lab_1::turtle_velocity :md5sum-) "8dda380a8a55b18c7abd86610253a772")
(setf (get lab_1::turtle_velocity :datatype-) "lab_1/turtle_velocity")
(setf (get lab_1::turtle_velocity :request) lab_1::turtle_velocityRequest)
(setf (get lab_1::turtle_velocity :response) lab_1::turtle_velocityResponse)

(defmethod lab_1::turtle_velocityRequest
  (:response () (instance lab_1::turtle_velocityResponse :init)))

(setf (get lab_1::turtle_velocityRequest :md5sum-) "8dda380a8a55b18c7abd86610253a772")
(setf (get lab_1::turtle_velocityRequest :datatype-) "lab_1/turtle_velocityRequest")
(setf (get lab_1::turtle_velocityRequest :definition-)
      "float64 major
float64 minor
float64 omega
---
")

(setf (get lab_1::turtle_velocityResponse :md5sum-) "8dda380a8a55b18c7abd86610253a772")
(setf (get lab_1::turtle_velocityResponse :datatype-) "lab_1/turtle_velocityResponse")
(setf (get lab_1::turtle_velocityResponse :definition-)
      "float64 major
float64 minor
float64 omega
---
")



(provide :lab_1/turtle_velocity "8dda380a8a55b18c7abd86610253a772")


