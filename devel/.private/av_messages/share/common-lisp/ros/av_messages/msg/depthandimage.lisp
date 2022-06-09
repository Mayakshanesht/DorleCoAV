; Auto-generated. Do not edit!


(cl:in-package av_messages-msg)


;//! \htmlinclude depthandimage.msg.html

(cl:defclass <depthandimage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rgb_image
    :reader rgb_image
    :initarg :rgb_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (depth_image
    :reader depth_image
    :initarg :depth_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass depthandimage (<depthandimage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <depthandimage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'depthandimage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name av_messages-msg:<depthandimage> is deprecated: use av_messages-msg:depthandimage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <depthandimage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:header-val is deprecated.  Use av_messages-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rgb_image-val :lambda-list '(m))
(cl:defmethod rgb_image-val ((m <depthandimage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:rgb_image-val is deprecated.  Use av_messages-msg:rgb_image instead.")
  (rgb_image m))

(cl:ensure-generic-function 'depth_image-val :lambda-list '(m))
(cl:defmethod depth_image-val ((m <depthandimage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader av_messages-msg:depth_image-val is deprecated.  Use av_messages-msg:depth_image instead.")
  (depth_image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <depthandimage>) ostream)
  "Serializes a message object of type '<depthandimage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rgb_image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth_image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <depthandimage>) istream)
  "Deserializes a message object of type '<depthandimage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rgb_image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth_image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<depthandimage>)))
  "Returns string type for a message object of type '<depthandimage>"
  "av_messages/depthandimage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'depthandimage)))
  "Returns string type for a message object of type 'depthandimage"
  "av_messages/depthandimage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<depthandimage>)))
  "Returns md5sum for a message object of type '<depthandimage>"
  "eb56a88abddc7348c1f32cf0e8e9606b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'depthandimage)))
  "Returns md5sum for a message object of type 'depthandimage"
  "eb56a88abddc7348c1f32cf0e8e9606b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<depthandimage>)))
  "Returns full string definition for message of type '<depthandimage>"
  (cl:format cl:nil "std_msgs/Header header~%~%sensor_msgs/Image rgb_image~%sensor_msgs/Image depth_image~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'depthandimage)))
  "Returns full string definition for message of type 'depthandimage"
  (cl:format cl:nil "std_msgs/Header header~%~%sensor_msgs/Image rgb_image~%sensor_msgs/Image depth_image~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <depthandimage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rgb_image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth_image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <depthandimage>))
  "Converts a ROS message object to a list"
  (cl:list 'depthandimage
    (cl:cons ':header (header msg))
    (cl:cons ':rgb_image (rgb_image msg))
    (cl:cons ':depth_image (depth_image msg))
))
