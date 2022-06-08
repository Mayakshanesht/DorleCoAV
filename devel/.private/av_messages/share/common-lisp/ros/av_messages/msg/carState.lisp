; Auto-generated. Do not edit!


(cl:in-package av_messages-msg)


;//! \htmlinclude carState.msg.html

(cl:defclass <carState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (car_state
    :reader car_state
    :initarg :car_state
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (car_state_dt
    :reader car_state_dt
    :initarg :car_state_dt
    :type av_messages-msg:carStateDT
    :initform (cl:make-instance 'av_messages-msg:carStateDT)))
)

(cl:defclass carState (<carState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <carState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'carState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name av_messages-msg:<carState> is deprecated: use av_messages-msg:carState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <carState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:header-val is deprecated.  Use av_messages-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'car_state-val :lambda-list '(m))
(cl:defmethod car_state-val ((m <carState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:car_state-val is deprecated.  Use av_messages-msg:car_state instead.")
  (car_state m))

(cl:ensure-generic-function 'car_state_dt-val :lambda-list '(m))
(cl:defmethod car_state_dt-val ((m <carState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:car_state_dt-val is deprecated.  Use av_messages-msg:car_state_dt instead.")
  (car_state_dt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <carState>) ostream)
  "Serializes a message object of type '<carState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'car_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'car_state_dt) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <carState>) istream)
  "Deserializes a message object of type '<carState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'car_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'car_state_dt) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<carState>)))
  "Returns string type for a message object of type '<carState>"
  "av_messages/carState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'carState)))
  "Returns string type for a message object of type 'carState"
  "av_messages/carState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<carState>)))
  "Returns md5sum for a message object of type '<carState>"
  "be929b6a6d1d1d2c80065a8e530992fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'carState)))
  "Returns md5sum for a message object of type 'carState"
  "be929b6a6d1d1d2c80065a8e530992fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<carState>)))
  "Returns full string definition for message of type '<carState>"
  (cl:format cl:nil "std_msgs/Header header~%~%geometry_msgs/Pose2D car_state # position of vehicle in x, y, theta~%av_messages/carStateDT car_state_dt # velocities~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: av_messages/carStateDT~%std_msgs/Header header~%~%geometry_msgs/Pose2D car_state_dt # Velocity in x, y, theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'carState)))
  "Returns full string definition for message of type 'carState"
  (cl:format cl:nil "std_msgs/Header header~%~%geometry_msgs/Pose2D car_state # position of vehicle in x, y, theta~%av_messages/carStateDT car_state_dt # velocities~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: av_messages/carStateDT~%std_msgs/Header header~%~%geometry_msgs/Pose2D car_state_dt # Velocity in x, y, theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <carState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'car_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'car_state_dt))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <carState>))
  "Converts a ROS message object to a list"
  (cl:list 'carState
    (cl:cons ':header (header msg))
    (cl:cons ':car_state (car_state msg))
    (cl:cons ':car_state_dt (car_state_dt msg))
))
