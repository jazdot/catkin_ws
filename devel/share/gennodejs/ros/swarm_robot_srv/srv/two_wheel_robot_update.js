// Auto-generated. Do not edit!

// (in-package swarm_robot_srv.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class two_wheel_robot_updateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.update_code = null;
      this.add_mode = null;
      this.half_range = null;
      this.position_2d = null;
    }
    else {
      if (initObj.hasOwnProperty('update_code')) {
        this.update_code = initObj.update_code
      }
      else {
        this.update_code = 0;
      }
      if (initObj.hasOwnProperty('add_mode')) {
        this.add_mode = initObj.add_mode
      }
      else {
        this.add_mode = false;
      }
      if (initObj.hasOwnProperty('half_range')) {
        this.half_range = initObj.half_range
      }
      else {
        this.half_range = 0.0;
      }
      if (initObj.hasOwnProperty('position_2d')) {
        this.position_2d = initObj.position_2d
      }
      else {
        this.position_2d = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type two_wheel_robot_updateRequest
    // Serialize message field [update_code]
    bufferOffset = _serializer.int32(obj.update_code, buffer, bufferOffset);
    // Serialize message field [add_mode]
    bufferOffset = _serializer.bool(obj.add_mode, buffer, bufferOffset);
    // Serialize message field [half_range]
    bufferOffset = _serializer.float64(obj.half_range, buffer, bufferOffset);
    // Serialize message field [position_2d]
    bufferOffset = _arraySerializer.float64(obj.position_2d, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type two_wheel_robot_updateRequest
    let len;
    let data = new two_wheel_robot_updateRequest(null);
    // Deserialize message field [update_code]
    data.update_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [add_mode]
    data.add_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [half_range]
    data.half_range = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_2d]
    data.position_2d = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.position_2d.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'swarm_robot_srv/two_wheel_robot_updateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b978865709518e2d2dfdb9ff9f97d3ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # service message to add or delete two wheel robot model in gazebo
    
    # service request how-to:
    # update_code >= CODE_ADD, add one robot
        # add_mode == ADD_MODE_RANDOM, add this robot at random position
            # specify the value of half_range
        # add_mode == ADD_MODE_SPECIFIED, add this robot at specified position
            # specify the value of position_2d
    # update_code == CODE_DELETE_ALL, delete all robots
    # update_code <= CODE_DELETE, delete robots a totoal number of abs(update_code)
    
    
    # request constants
    int32 CODE_DELETE = -1
    int32 CODE_DELETE_ALL = 0
    int32 CODE_ADD = 1
    # first letter of True and False should be capitalized
    bool ADD_MODE_RANDOM = False
    bool ADD_MODE_SPECIFIED = True
    # request fields
    # sign indicates add or delete, absolute value means quantity
    # 0 represents delete all
    int32 update_code
    bool add_mode
    # the distribution when randomly adding a robot
    float64 half_range
    # the position when specifically adding a robot
    float64[] position_2d
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new two_wheel_robot_updateRequest(null);
    if (msg.update_code !== undefined) {
      resolved.update_code = msg.update_code;
    }
    else {
      resolved.update_code = 0
    }

    if (msg.add_mode !== undefined) {
      resolved.add_mode = msg.add_mode;
    }
    else {
      resolved.add_mode = false
    }

    if (msg.half_range !== undefined) {
      resolved.half_range = msg.half_range;
    }
    else {
      resolved.half_range = 0.0
    }

    if (msg.position_2d !== undefined) {
      resolved.position_2d = msg.position_2d;
    }
    else {
      resolved.position_2d = []
    }

    return resolved;
    }
};

// Constants for message
two_wheel_robot_updateRequest.Constants = {
  CODE_DELETE: -1,
  CODE_DELETE_ALL: 0,
  CODE_ADD: 1,
  ADD_MODE_RANDOM: false,
  ADD_MODE_SPECIFIED: true,
}

class two_wheel_robot_updateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response_code = null;
    }
    else {
      if (initObj.hasOwnProperty('response_code')) {
        this.response_code = initObj.response_code
      }
      else {
        this.response_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type two_wheel_robot_updateResponse
    // Serialize message field [response_code]
    bufferOffset = _serializer.uint8(obj.response_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type two_wheel_robot_updateResponse
    let len;
    let data = new two_wheel_robot_updateResponse(null);
    // Deserialize message field [response_code]
    data.response_code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'swarm_robot_srv/two_wheel_robot_updateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1e5cdee217c8e44265e1af6666572cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # response constants
    uint8 SUCCESS = 1
    uint8 ADD_FAIL_NO_RESPONSE = 2
    uint8 ADD_FAIL_TOO_CROWDED = 3
        # too crowded when adding a number of robots
    uint8 ADD_FAIL_OCCUPIED = 4
        # position ocupied when adding one robot
    uint8 DELETE_FAIL_NO_RESPONSE = 5
    uint8 DELETE_FAIL_EXCEED_QUANTITY = 6
    uint8 FAIL_OTHER_REASONS = 7
    # response fields
    uint8 response_code
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new two_wheel_robot_updateResponse(null);
    if (msg.response_code !== undefined) {
      resolved.response_code = msg.response_code;
    }
    else {
      resolved.response_code = 0
    }

    return resolved;
    }
};

// Constants for message
two_wheel_robot_updateResponse.Constants = {
  SUCCESS: 1,
  ADD_FAIL_NO_RESPONSE: 2,
  ADD_FAIL_TOO_CROWDED: 3,
  ADD_FAIL_OCCUPIED: 4,
  DELETE_FAIL_NO_RESPONSE: 5,
  DELETE_FAIL_EXCEED_QUANTITY: 6,
  FAIL_OTHER_REASONS: 7,
}

module.exports = {
  Request: two_wheel_robot_updateRequest,
  Response: two_wheel_robot_updateResponse,
  md5sum() { return '37c36975550b76d968b8b389672952f5'; },
  datatype() { return 'swarm_robot_srv/two_wheel_robot_update'; }
};
