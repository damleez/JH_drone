;; Auto-generated. Do not edit!


(when (boundp 'turtlebot3_applications_msgs::SetFollowState)
  (if (not (find-package "TURTLEBOT3_APPLICATIONS_MSGS"))
    (make-package "TURTLEBOT3_APPLICATIONS_MSGS"))
  (shadow 'SetFollowState (find-package "TURTLEBOT3_APPLICATIONS_MSGS")))
(unless (find-package "TURTLEBOT3_APPLICATIONS_MSGS::SETFOLLOWSTATE")
  (make-package "TURTLEBOT3_APPLICATIONS_MSGS::SETFOLLOWSTATE"))
(unless (find-package "TURTLEBOT3_APPLICATIONS_MSGS::SETFOLLOWSTATEREQUEST")
  (make-package "TURTLEBOT3_APPLICATIONS_MSGS::SETFOLLOWSTATEREQUEST"))
(unless (find-package "TURTLEBOT3_APPLICATIONS_MSGS::SETFOLLOWSTATERESPONSE")
  (make-package "TURTLEBOT3_APPLICATIONS_MSGS::SETFOLLOWSTATERESPONSE"))

(in-package "ROS")





(intern "*STOPPED*" (find-package "TURTLEBOT3_APPLICATIONS_MSGS::SETFOLLOWSTATEREQUEST"))
(shadow '*STOPPED* (find-package "TURTLEBOT3_APPLICATIONS_MSGS::SETFOLLOWSTATEREQUEST"))
(defconstant turtlebot3_applications_msgs::SetFollowStateRequest::*STOPPED* 0)
(intern "*FOLLOW*" (find-package "TURTLEBOT3_APPLICATIONS_MSGS::SETFOLLOWSTATEREQUEST"))
(shadow '*FOLLOW* (find-package "TURTLEBOT3_APPLICATIONS_MSGS::SETFOLLOWSTATEREQUEST"))
(defconstant turtlebot3_applications_msgs::SetFollowStateRequest::*FOLLOW* 1)
(intern "*OK*" (find-package "TURTLEBOT3_APPLICATIONS_MSGS::SETFOLLOWSTATEREQUEST"))
(shadow '*OK* (find-package "TURTLEBOT3_APPLICATIONS_MSGS::SETFOLLOWSTATEREQUEST"))
(defconstant turtlebot3_applications_msgs::SetFollowStateRequest::*OK* 0)
(intern "*ERROR*" (find-package "TURTLEBOT3_APPLICATIONS_MSGS::SETFOLLOWSTATEREQUEST"))
(shadow '*ERROR* (find-package "TURTLEBOT3_APPLICATIONS_MSGS::SETFOLLOWSTATEREQUEST"))
(defconstant turtlebot3_applications_msgs::SetFollowStateRequest::*ERROR* 1)

(defun turtlebot3_applications_msgs::SetFollowStateRequest-to-symbol (const)
  (cond
        ((= const 0) 'turtlebot3_applications_msgs::SetFollowStateRequest::*STOPPED*)
        ((= const 1) 'turtlebot3_applications_msgs::SetFollowStateRequest::*FOLLOW*)
        ((= const 0) 'turtlebot3_applications_msgs::SetFollowStateRequest::*OK*)
        ((= const 1) 'turtlebot3_applications_msgs::SetFollowStateRequest::*ERROR*)
        (t nil)))

(defclass turtlebot3_applications_msgs::SetFollowStateRequest
  :super ros::object
  :slots (_state ))

(defmethod turtlebot3_applications_msgs::SetFollowStateRequest
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass turtlebot3_applications_msgs::SetFollowStateResponse
  :super ros::object
  :slots (_result ))

(defmethod turtlebot3_applications_msgs::SetFollowStateResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass turtlebot3_applications_msgs::SetFollowState
  :super ros::object
  :slots ())

(setf (get turtlebot3_applications_msgs::SetFollowState :md5sum-) "5e290922f7d7a8ce77a284f2806529db")
(setf (get turtlebot3_applications_msgs::SetFollowState :datatype-) "turtlebot3_applications_msgs/SetFollowState")
(setf (get turtlebot3_applications_msgs::SetFollowState :request) turtlebot3_applications_msgs::SetFollowStateRequest)
(setf (get turtlebot3_applications_msgs::SetFollowState :response) turtlebot3_applications_msgs::SetFollowStateResponse)

(defmethod turtlebot3_applications_msgs::SetFollowStateRequest
  (:response () (instance turtlebot3_applications_msgs::SetFollowStateResponse :init)))

(setf (get turtlebot3_applications_msgs::SetFollowStateRequest :md5sum-) "5e290922f7d7a8ce77a284f2806529db")
(setf (get turtlebot3_applications_msgs::SetFollowStateRequest :datatype-) "turtlebot3_applications_msgs/SetFollowStateRequest")
(setf (get turtlebot3_applications_msgs::SetFollowStateRequest :definition-)
      "########################################
# CONSTANTS
########################################
uint8 STOPPED = 0
uint8 FOLLOW  = 1

uint8 OK      = 0
uint8 ERROR   = 1

########################################
# Messages
########################################
uint8 state     # STOPPED or FOLLOW
---
uint8 result    # OK or ERROR

")

(setf (get turtlebot3_applications_msgs::SetFollowStateResponse :md5sum-) "5e290922f7d7a8ce77a284f2806529db")
(setf (get turtlebot3_applications_msgs::SetFollowStateResponse :datatype-) "turtlebot3_applications_msgs/SetFollowStateResponse")
(setf (get turtlebot3_applications_msgs::SetFollowStateResponse :definition-)
      "########################################
# CONSTANTS
########################################
uint8 STOPPED = 0
uint8 FOLLOW  = 1

uint8 OK      = 0
uint8 ERROR   = 1

########################################
# Messages
########################################
uint8 state     # STOPPED or FOLLOW
---
uint8 result    # OK or ERROR

")



(provide :turtlebot3_applications_msgs/SetFollowState "5e290922f7d7a8ce77a284f2806529db")


