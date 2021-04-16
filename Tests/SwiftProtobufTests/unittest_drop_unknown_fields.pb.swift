// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/protobuf/unittest_drop_unknown_fields.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protocol Buffers - Google's data interchange format
// Copyright 2008 Google Inc.  All rights reserved.
// https://developers.google.com/protocol-buffers/
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//     * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following disclaimer
// in the documentation and/or other materials provided with the
// distribution.
//     * Neither the name of Google Inc. nor the names of its
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import Foundation
import InternalSwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: InternalSwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: InternalSwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct UnittestDropUnknownFields_Foo {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var int32Value: Int32 = 0

  var enumValue: UnittestDropUnknownFields_Foo.NestedEnum = .foo

  var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  enum NestedEnum: InternalSwiftProtobuf.Enum {
    typealias RawValue = Int
    case foo // = 0
    case bar // = 1
    case baz // = 2
    case UNRECOGNIZED(Int)

    init() {
      self = .foo
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .foo
      case 1: self = .bar
      case 2: self = .baz
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .foo: return 0
      case .bar: return 1
      case .baz: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension UnittestDropUnknownFields_Foo.NestedEnum: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [UnittestDropUnknownFields_Foo.NestedEnum] = [
    .foo,
    .bar,
    .baz,
  ]
}

#endif  // swift(>=4.2)

struct UnittestDropUnknownFields_FooWithExtraFields {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var int32Value: Int32 = 0

  var enumValue: UnittestDropUnknownFields_FooWithExtraFields.NestedEnum = .foo

  var extraInt32Value: Int32 = 0

  var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  enum NestedEnum: InternalSwiftProtobuf.Enum {
    typealias RawValue = Int
    case foo // = 0
    case bar // = 1
    case baz // = 2
    case qux // = 3
    case UNRECOGNIZED(Int)

    init() {
      self = .foo
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .foo
      case 1: self = .bar
      case 2: self = .baz
      case 3: self = .qux
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .foo: return 0
      case .bar: return 1
      case .baz: return 2
      case .qux: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension UnittestDropUnknownFields_FooWithExtraFields.NestedEnum: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [UnittestDropUnknownFields_FooWithExtraFields.NestedEnum] = [
    .foo,
    .bar,
    .baz,
    .qux,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "unittest_drop_unknown_fields"

extension UnittestDropUnknownFields_Foo: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Foo"
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .standard(proto: "int32_value"),
    2: .standard(proto: "enum_value"),
  ]

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.int32Value) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.enumValue) }()
      default: break
      }
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.int32Value != 0 {
      try visitor.visitSingularInt32Field(value: self.int32Value, fieldNumber: 1)
    }
    if self.enumValue != .foo {
      try visitor.visitSingularEnumField(value: self.enumValue, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: UnittestDropUnknownFields_Foo, rhs: UnittestDropUnknownFields_Foo) -> Bool {
    if lhs.int32Value != rhs.int32Value {return false}
    if lhs.enumValue != rhs.enumValue {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension UnittestDropUnknownFields_Foo.NestedEnum: InternalSwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    0: .same(proto: "FOO"),
    1: .same(proto: "BAR"),
    2: .same(proto: "BAZ"),
  ]
}

extension UnittestDropUnknownFields_FooWithExtraFields: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".FooWithExtraFields"
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .standard(proto: "int32_value"),
    2: .standard(proto: "enum_value"),
    3: .standard(proto: "extra_int32_value"),
  ]

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.int32Value) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.enumValue) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.extraInt32Value) }()
      default: break
      }
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.int32Value != 0 {
      try visitor.visitSingularInt32Field(value: self.int32Value, fieldNumber: 1)
    }
    if self.enumValue != .foo {
      try visitor.visitSingularEnumField(value: self.enumValue, fieldNumber: 2)
    }
    if self.extraInt32Value != 0 {
      try visitor.visitSingularInt32Field(value: self.extraInt32Value, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: UnittestDropUnknownFields_FooWithExtraFields, rhs: UnittestDropUnknownFields_FooWithExtraFields) -> Bool {
    if lhs.int32Value != rhs.int32Value {return false}
    if lhs.enumValue != rhs.enumValue {return false}
    if lhs.extraInt32Value != rhs.extraInt32Value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension UnittestDropUnknownFields_FooWithExtraFields.NestedEnum: InternalSwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    0: .same(proto: "FOO"),
    1: .same(proto: "BAR"),
    2: .same(proto: "BAZ"),
    3: .same(proto: "QUX"),
  ]
}
