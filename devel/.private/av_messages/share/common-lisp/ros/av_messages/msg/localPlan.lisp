; Auto-generated. Do not edit!


(cl:in-package av_messages-msg)


;//! \htmlinclude localPlan.msg.html

(cl:defclass <localPlan> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector av_messages-msg:wayPoint)
   :initform (cl:make-array 0 :element-type 'av_messages-msg:wayPoint :initial-element (cl:make-instance 'av_messages-msg:wayPoint))))
)

(cl:defclass localPlan (<localPlan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <localPlan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'localPlan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name av_messages-msg:<localPlan> is deprecated: use av_messages-msg:localPlan instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <localPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:header-val is deprecated.  Use av_messages-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <localPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:waypoints-val is deprecated.  Use av_messages-msg:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <localPlan>) ostream)
  "Serializes a message object of type '<localPlan>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <localPlan>) istream)
  "Deserializes a message object of type '<localPlan>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'av_messages-msg:wayPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<localPlan>)))
  "Returns string type for a message object of type '<localPlan>"
  "av_messages/localPlan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'localPlan)))
  "Returns string type for a message object of type 'localPlan"
  "av_messages/localPlan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<localPlan>)))
  "Returns md5sum for a message object of type '<localPlan>"
  "05754274c61038b95b0c27909a71cc65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'localPlan)))
  "Returns md5sum for a message object of type 'localPlan"
  "05754274c61038b95b0c27909a71cc65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<localPlan>)))
  "Returns full string definition for message of type '<localPlan>"
  (cl:format cl:nil "std_msgs/Header header~%~%av_messages/wayPoint[] waypoints~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: av_messages/wayPoint~%# A standard message for local planner waypoints~%~%geometry_msgs/Point32 position # position in x,y for local planner and latitude longitude for global planner~%~%float64 desired_velocity~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'localPlan)))
  "Returns full string definition for message of type 'localPlan"
  (cl:format cl:nil "std_msgs/Header header~%~%av_messages/wayPoint[] waypoints~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: av_messages/wayPoint~%# A standard message for local planner waypoints~%~%geometry_msgs/Point32 position # position in x,y for local planner and latitude longitude for global planner~%~%float64 desired_velocity~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <localPlan>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <localPlan>))
  "Converts a ROS message object to a list"
  (cl:list 'localPlan
    (cl:cons ':header (header msg))
    (cl:cons ':waypoints (waypoints msg))
))
