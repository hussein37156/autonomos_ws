// Auto-generated. Do not edit!

// (in-package lab_1.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class turtle_velocityRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.major = null;
      this.minor = null;
      this.omega = null;
    }
    else {
      if (initObj.hasOwnProperty('major')) {
        this.major = initObj.major
      }
      else {
        this.major = 0.0;
      }
      if (initObj.hasOwnProperty('minor')) {
        this.minor = initObj.minor
      }
      else {
        this.minor = 0.0;
      }
      if (initObj.hasOwnProperty('omega')) {
        this.omega = initObj.omega
      }
      else {
        this.omega = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type turtle_velocityRequest
    // Serialize message field [major]
    bufferOffset = _serializer.float64(obj.major, buffer, bufferOffset);
    // Serialize message field [minor]
    bufferOffset = _serializer.float64(obj.minor, buffer, bufferOffset);
    // Serialize message field [omega]
    bufferOffset = _serializer.float64(obj.omega, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type turtle_velocityRequest
    let len;
    let data = new turtle_velocityRequest(null);
    // Deserialize message field [major]
    data.major = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [minor]
    data.minor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omega]
    data.omega = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lab_1/turtle_velocityRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8dda380a8a55b18c7abd86610253a772';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 major
    float64 minor
    float64 omega
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new turtle_velocityRequest(null);
    if (msg.major !== undefined) {
      resolved.major = msg.major;
    }
    else {
      resolved.major = 0.0
    }

    if (msg.minor !== undefined) {
      resolved.minor = msg.minor;
    }
    else {
      resolved.minor = 0.0
    }

    if (msg.omega !== undefined) {
      resolved.omega = msg.omega;
    }
    else {
      resolved.omega = 0.0
    }

    return resolved;
    }
};

class turtle_velocityResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type turtle_velocityResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type turtle_velocityResponse
    let len;
    let data = new turtle_velocityResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lab_1/turtle_velocityResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new turtle_velocityResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: turtle_velocityRequest,
  Response: turtle_velocityResponse,
  md5sum() { return '8dda380a8a55b18c7abd86610253a772'; },
  datatype() { return 'lab_1/turtle_velocity'; }
};
