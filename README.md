# Internal Swift Protobuf

This is an internal copy of Swift Protobuf, used as the source code
base for a copy that ships in the internal SDK of Apple's operating systems.
This makes protobuf available to internal Swift users without the need to
include a copy in their own applications.

Please file all radars to `iCloud CloudKit Swift | SwiftProtobuf`.

## OpenSource ReadMe:
The README for the open source version of SwiftProtobuf is available at [README-OSS.md](./README-OSS.md)

## Differences

This framework differs from the upstream open source framework in a few notable ways

- its name is different. Specifically, this framework is named `InternalSwiftProtobuf` instead of `SwiftProtobuf`
- it's compiled for distribution, and disables any inlining, to improve severability between library and adopter

# Usage

SwiftProtobuf is Open Source Software so you'll need that approved by Legal first.  You can request that through [https://legal.apple.com/jira/servicedesk/customer/portal/10](https://legal.apple.com/jira/servicedesk/customer/portal/10).

## Library

The library is available for **internal** Swift code on the OS to use as a runtime library.  It is located at `/System/Library/PrivateFrameworks/InternalSwiftProtobuf.framework`.

The library mirrors the open source version but the module name has been changed to `InternalSwiftProtobuf` to avoid conflicts with anyone using the actual open source version as well.

## Protocol Compiler

It is expected that if going through B&I you will checkin your generated code rather than running `protoc` as part of your build. This is because submitting binaries and running custom compilers is strongly discouraged by B&I

To run the protocol compiler in a way which will work with the renamed module supply use as follows

`protoc --swift_out=SwiftProtobufModuleName=InternalSwiftProtobuf`

DT are considering supplying a protocol compiler as part of Xcode.  See 

   * [rdar://21942019](rdar://21942019) (Developer tools should include a protobuf compiler that supports Apple languages)
   * [rdar://19877326](rdar://19877326) (ER: Syntax highlighting for protobuf files)
