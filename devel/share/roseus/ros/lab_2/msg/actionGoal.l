;; Auto-generated. Do not edit!


(when (boundp 'lab_2::actionGoal)
  (if (not (find-package "LAB_2"))
    (make-package "LAB_2"))
  (shadow 'actionGoal (find-package "LAB_2")))
(unless (find-package "LAB_2::ACTIONGOAL")
  (make-package "LAB_2::ACTIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude actionGoal.msg.html


(defclass lab_2::actionGoal
  :super ros::object
  :slots (_request ))

(defmethod lab_2::actionGoal
  (:init
   (&key
    ((:request __request) 0)
    )
   (send-super :init)
   (setq _request (round __request))
   self)
  (:request
   (&optional __request)
   (if __request (setq _request __request)) _request)
  (:serialization-length
   ()
   (+
    ;; int64 _request
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _request
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _request (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _request) (= (length (_request . bv)) 2)) ;; bignum
              (write-long (ash (elt (_request . bv) 0) 0) s)
              (write-long (ash (elt (_request . bv) 1) -1) s))
             ((and (class _request) (= (length (_request . bv)) 1)) ;; big1
              (write-long (elt (_request . bv) 0) s)
              (write-long (if (>= _request 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _request s)(write-long (if (>= _request 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _request
#+(or :alpha :irix6 :x86_64)
      (setf _request (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _request (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get lab_2::actionGoal :md5sum-) "7b8b3e2da8be658e01dee48451dead03")
(setf (get lab_2::actionGoal :datatype-) "lab_2/actionGoal")
(setf (get lab_2::actionGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
int64 request

")



(provide :lab_2/actionGoal "7b8b3e2da8be658e01dee48451dead03")

