// Auto-generated. Do not edit!

// (in-package distance_converter.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class DistanceConversionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance_in_cm = null;
    }
    else {
      if (initObj.hasOwnProperty('distance_in_cm')) {
        this.distance_in_cm = initObj.distance_in_cm
      }
      else {
        this.distance_in_cm = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DistanceConversionRequest
    // Serialize message field [distance_in_cm]
    bufferOffset = _serializer.float64(obj.distance_in_cm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DistanceConversionRequest
    let len;
    let data = new DistanceConversionRequest(null);
    // Deserialize message field [distance_in_cm]
    data.distance_in_cm = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'distance_converter/DistanceConversionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9c491f2fd3247fdfdb3898394da618e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 distance_in_cm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DistanceConversionRequest(null);
    if (msg.distance_in_cm !== undefined) {
      resolved.distance_in_cm = msg.distance_in_cm;
    }
    else {
      resolved.distance_in_cm = 0.0
    }

    return resolved;
    }
};

class DistanceConversionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.converted_distance_in_mm = null;
    }
    else {
      if (initObj.hasOwnProperty('converted_distance_in_mm')) {
        this.converted_distance_in_mm = initObj.converted_distance_in_mm
      }
      else {
        this.converted_distance_in_mm = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DistanceConversionResponse
    // Serialize message field [converted_distance_in_mm]
    bufferOffset = _serializer.float64(obj.converted_distance_in_mm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DistanceConversionResponse
    let len;
    let data = new DistanceConversionResponse(null);
    // Deserialize message field [converted_distance_in_mm]
    data.converted_distance_in_mm = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'distance_converter/DistanceConversionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '016b15d6273beaa8c3d77b9cfa64f8a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 converted_distance_in_mm
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DistanceConversionResponse(null);
    if (msg.converted_distance_in_mm !== undefined) {
      resolved.converted_distance_in_mm = msg.converted_distance_in_mm;
    }
    else {
      resolved.converted_distance_in_mm = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: DistanceConversionRequest,
  Response: DistanceConversionResponse,
  md5sum() { return 'f163c2866a2367d94281173af77bbba8'; },
  datatype() { return 'distance_converter/DistanceConversion'; }
};
