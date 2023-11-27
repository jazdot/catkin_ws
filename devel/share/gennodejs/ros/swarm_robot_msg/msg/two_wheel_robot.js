// Auto-generated. Do not edit!

// (in-package swarm_robot_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class two_wheel_robot {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.x = null;
      this.y = null;
      this.orientation = null;
      this.left_wheel_vel = null;
      this.right_wheel_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = [];
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = [];
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = [];
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = [];
      }
      if (initObj.hasOwnProperty('left_wheel_vel')) {
        this.left_wheel_vel = initObj.left_wheel_vel
      }
      else {
        this.left_wheel_vel = [];
      }
      if (initObj.hasOwnProperty('right_wheel_vel')) {
        this.right_wheel_vel = initObj.right_wheel_vel
      }
      else {
        this.right_wheel_vel = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type two_wheel_robot
    // Serialize message field [index]
    bufferOffset = _arraySerializer.int32(obj.index, buffer, bufferOffset, null);
    // Serialize message field [x]
    bufferOffset = _arraySerializer.float64(obj.x, buffer, bufferOffset, null);
    // Serialize message field [y]
    bufferOffset = _arraySerializer.float64(obj.y, buffer, bufferOffset, null);
    // Serialize message field [orientation]
    bufferOffset = _arraySerializer.float64(obj.orientation, buffer, bufferOffset, null);
    // Serialize message field [left_wheel_vel]
    bufferOffset = _arraySerializer.float64(obj.left_wheel_vel, buffer, bufferOffset, null);
    // Serialize message field [right_wheel_vel]
    bufferOffset = _arraySerializer.float64(obj.right_wheel_vel, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type two_wheel_robot
    let len;
    let data = new two_wheel_robot(null);
    // Deserialize message field [index]
    data.index = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [orientation]
    data.orientation = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [left_wheel_vel]
    data.left_wheel_vel = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [right_wheel_vel]
    data.right_wheel_vel = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.index.length;
    length += 8 * object.x.length;
    length += 8 * object.y.length;
    length += 8 * object.orientation.length;
    length += 8 * object.left_wheel_vel.length;
    length += 8 * object.right_wheel_vel.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_robot_msg/two_wheel_robot';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '960dcd4f229cf2d627bb30845b3ae2f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # message type to describe all information needed for current status of two wheel robots
    
    # the dimensions of following array should be the same, each elements indicate a robot
    int32[] index
    float64[] x
    float64[] y
    float64[] orientation
    float64[] left_wheel_vel
    float64[] right_wheel_vel
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new two_wheel_robot(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = []
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = []
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = []
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = []
    }

    if (msg.left_wheel_vel !== undefined) {
      resolved.left_wheel_vel = msg.left_wheel_vel;
    }
    else {
      resolved.left_wheel_vel = []
    }

    if (msg.right_wheel_vel !== undefined) {
      resolved.right_wheel_vel = msg.right_wheel_vel;
    }
    else {
      resolved.right_wheel_vel = []
    }

    return resolved;
    }
};

module.exports = two_wheel_robot;
