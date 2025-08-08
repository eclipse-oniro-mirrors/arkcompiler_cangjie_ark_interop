# Media Error Codes

> **Note:**
>
> The following describes only the module-specific error codes. For general error codes, please refer to the [Universal Error Code Documentation](cj-errorcode-universal.md).

## 5400101 Memory Allocation Failure

**Error Message**

No memory.

**Error Description**

Failed to allocate memory.

**Possible Causes**

1. The number of instances exceeds 16.
2. A null pointer occurred due to failure in the `new` or `malloc` process.

**Resolution Steps**

Destroy the current instance and recreate it. If recreation fails, stop the related operations.

## 5400102 Operation Not Supported by Current State Machine

**Error Message**

Operation not allowed.

**Error Description**

The current operation is not permitted.

**Possible Causes**

The current state machine does not support this operation.

**Resolution Steps**

Verify whether the current state supports the operation. Switch the instance to the correct state to perform the proper operation.

## 5400103 I/O Error Occurred

**Error Message**

I/O error.

**Error Description**

An I/O error occurred.

**Possible Causes**

Issues in data interaction between the media module and other modules (graphics, audio, network, HDI, camera).

**Resolution Steps**

Check if the network is functioning properly. Destroy the current instance and recreate it. If recreation fails, stop the related operations.

## 5400104 Operation Timeout

**Error Message**

Operation timeout.

**Error Description**

Operation timed out.

**Possible Causes**

1. Network timeout. The default network timeout is 15 seconds, starting from the event reporting of the initial cache. This error is reported upon timeout.
2. Timeout when accessing other modules.

**Resolution Steps**

1. Verify if the network is functioning properly.
2. Destroy the current instance and recreate it. If recreation fails, stop the related operations.

## 5400105 Playback Service Died

**Error Message**

Service died.

**Error Description**

The playback service died.

**Possible Causes**

The playback service died.

**Resolution Steps**

Destroy the current instance and recreate it. If recreation fails, stop the related operations.

## 5400106 Unsupported Format

**Error Message**

Unsupported format.

**Error Description**

Unsupported format.

**Possible Causes**

Unsupported file or format.

**Resolution Steps**

The currently used format is not supported. The user needs to switch to a supported format.

Refer to the actual module functionality for supported formats.

## 5400107 Audio Focus Conflict

**Error Message**

Audio interrupted.

**Error Description**

Recording failed due to audio focus conflict.

**Possible Causes**

Another process has occupied the audio focus, making it unavailable.

**Resolution Steps**

Destroy the current instance and check if another process is currently recording. If the occupying process can be stopped, recreate the instance.

## 5411001 Server Address Resolution or Connection Error

**Error Message**

Can not find host.

**Error Description**

Error in resolving or connecting to the server address.

**Possible Causes**

1. Incorrect server address connection.
2. Failed resolution of the server address.

**Resolution Steps**

The current server address is incorrect or cannot be resolved. Use a different server address.

## 5411002 Network Connection Timeout

**Error Message**

Connection time out.

**Error Description**

Network connection timed out.

**Possible Causes**

Network anomaly.

**Resolution Steps**

1. Verify if the network is functioning properly.
2. Destroy the current instance and recreate it. If recreation fails, stop the related operations.

## 5411003 Data or Link Anomaly Due to Network Issues

**Error Message**

NetWork abnormal.

**Error Description**

Data or link anomaly caused by network issues.

**Possible Causes**

Network anomaly.

**Resolution Steps**

Destroy the current instance and recreate it. If recreation fails, stop the related operations.

## 5411004 Network Disabled

**Error Message**

NetWork unavailable.

**Error Description**

Error caused by disabled network.

**Possible Causes**

Network is disabled.

**Resolution Steps**

1. Verify if the network is disabled.
2. Destroy the current instance and recreate it. If recreation fails, stop the related operations.

## 5411005 No Permission, Access Denied

**Error Message**

No permission.

**Error Description**

No access permission.

**Possible Causes**

No access permission.

**Resolution Steps**

1. Verify if access permission is granted.
2. Destroy the current instance and recreate it. If recreation fails, stop the related operations.

## 5411006 Client Request Parameter Error or Exceeds Processing Capacity

**Error Message**

Network access denied.

**Error Description**

Client request parameter error or exceeds processing capacity.

**Possible Causes**

Client request parameter error or exceeds processing capacity.

**Resolution Steps**

1. Verify if the request parameters are correct.
2. Destroy the current instance and recreate it. If recreation fails, stop the related operations.

## 5411007 No Available Resources

**Error Message**

Cannot find available network resources.

**Error Description**

No available network resources.

**Possible Causes**

Server address connection anomaly.

**Resolution Steps**

1. Verify if the server address connection is functioning properly.
2. Destroy the current instance and recreate it. If recreation fails, stop the related operations.

## 5411008 Server Failed to Validate Client Certificate

**Error Message**

SSL client cert needed.

**Error Description**

SSL client is untrusted. Server failed to validate the client certificate.

**Possible Causes**

No certificate provided, invalid certificate, or expired certificate.

**Resolution Steps**

1. Verify if the SSL certificate is valid.
2. Destroy the current instance and recreate it. If recreation fails, stop the related operations.

## 5411009 SSL Connection Failed

**Error Message**

SSL connection failed.

**Error Description**

SSL connection failed.

**Possible Causes**SSL connection failed.

**Troubleshooting Steps**

1. Verify whether the SSL connection has expired.
2. Terminate the current instance and recreate it. If recreation fails, abort related operations.

## 5411010 Client Failed to Verify Server Certificate

**Error Message**

SSL server cert needed.

**Error Description**

The SSL server is untrusted. The client failed to verify the server certificate.

**Possible Causes**

Missing certificate, invalid certificate, or expired certificate.

**Troubleshooting Steps**

1. Verify whether the SSL certificate is functioning properly.
2. Terminate the current instance and recreate it. If recreation fails, abort related operations.

## 5411011 Request Unsupported Due to Network Protocol Issues

**Error Message**

Unsupported request.

**Error Description**

Client request parameters are incorrect or exceed processing capacity.

**Possible Causes**

Client request parameters are incorrect or exceed processing capacity.

**Troubleshooting Steps**

1. Verify whether the client request parameters are correct.
2. Terminate the current instance and recreate it. If recreation fails, abort related operations.