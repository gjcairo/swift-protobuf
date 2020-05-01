// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: unittest_swift_extension3.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protos/unittest_swift_extension3.proto - test proto
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
// -----------------------------------------------------------------------------
///
/// Test naming of extensions that differ only in proto package. This is a
/// clone of unittest_swift_extension2.proto, but with a different proto package
/// and different extension numbers.
///
// -----------------------------------------------------------------------------

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

struct ProtobufUnittest_Extend3_MyMessage {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  struct C {
    // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var c: Int64 {
      get {return _c ?? 0}
      set {_c = newValue}
    }
    /// Returns true if `c` has been explicitly set.
    var hasC: Bool {return self._c != nil}
    /// Clears the value of `c`. Subsequent reads from it will return its default value.
    mutating func clearC() {self._c = nil}

    var unknownFields = InternalSwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _c: Int64? = nil
  }

  init() {}
}

struct ProtobufUnittest_Extend3_C {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var c: Int64 {
    get {return _c ?? 0}
    set {_c = newValue}
  }
  /// Returns true if `c` has been explicitly set.
  var hasC: Bool {return self._c != nil}
  /// Clears the value of `c`. Subsequent reads from it will return its default value.
  mutating func clearC() {self._c = nil}

  var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _c: Int64? = nil
}

// MARK: - Extension support defined in unittest_swift_extension3.proto.

extension ProtobufUnittest_Extend_Foo.Bar.Baz {

  var ProtobufUnittest_Extend3_b: String {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend3_Extensions_b) ?? String()}
    set {setExtensionValue(ext: ProtobufUnittest_Extend3_Extensions_b, value: newValue)}
  }
  /// Returns true if extension `ProtobufUnittest_Extend3_Extensions_b`
  /// has been explicitly set.
  var hasProtobufUnittest_Extend3_b: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend3_Extensions_b)
  }
  /// Clears the value of extension `ProtobufUnittest_Extend3_Extensions_b`.
  /// Subsequent reads from it will return its default value.
  mutating func clearProtobufUnittest_Extend3_b() {
    clearExtensionValue(ext: ProtobufUnittest_Extend3_Extensions_b)
  }

  var ProtobufUnittest_Extend3_c: ProtobufUnittest_Extend3_C {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend3_Extensions_C) ?? ProtobufUnittest_Extend3_C()}
    set {setExtensionValue(ext: ProtobufUnittest_Extend3_Extensions_C, value: newValue)}
  }
  /// Returns true if extension `ProtobufUnittest_Extend3_Extensions_C`
  /// has been explicitly set.
  var hasProtobufUnittest_Extend3_c: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend3_Extensions_C)
  }
  /// Clears the value of extension `ProtobufUnittest_Extend3_Extensions_C`.
  /// Subsequent reads from it will return its default value.
  mutating func clearProtobufUnittest_Extend3_c() {
    clearExtensionValue(ext: ProtobufUnittest_Extend3_Extensions_C)
  }

  var ProtobufUnittest_Extend3_MyMessage_b: String {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend3_MyMessage.Extensions.b) ?? String()}
    set {setExtensionValue(ext: ProtobufUnittest_Extend3_MyMessage.Extensions.b, value: newValue)}
  }
  /// Returns true if extension `ProtobufUnittest_Extend3_MyMessage.Extensions.b`
  /// has been explicitly set.
  var hasProtobufUnittest_Extend3_MyMessage_b: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend3_MyMessage.Extensions.b)
  }
  /// Clears the value of extension `ProtobufUnittest_Extend3_MyMessage.Extensions.b`.
  /// Subsequent reads from it will return its default value.
  mutating func clearProtobufUnittest_Extend3_MyMessage_b() {
    clearExtensionValue(ext: ProtobufUnittest_Extend3_MyMessage.Extensions.b)
  }

  var ProtobufUnittest_Extend3_MyMessage_c: ProtobufUnittest_Extend3_MyMessage.C {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend3_MyMessage.Extensions.C) ?? ProtobufUnittest_Extend3_MyMessage.C()}
    set {setExtensionValue(ext: ProtobufUnittest_Extend3_MyMessage.Extensions.C, value: newValue)}
  }
  /// Returns true if extension `ProtobufUnittest_Extend3_MyMessage.Extensions.C`
  /// has been explicitly set.
  var hasProtobufUnittest_Extend3_MyMessage_c: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend3_MyMessage.Extensions.C)
  }
  /// Clears the value of extension `ProtobufUnittest_Extend3_MyMessage.Extensions.C`.
  /// Subsequent reads from it will return its default value.
  mutating func clearProtobufUnittest_Extend3_MyMessage_c() {
    clearExtensionValue(ext: ProtobufUnittest_Extend3_MyMessage.Extensions.C)
  }

}

/// A `InternalSwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `InternalSwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `InternalSwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `InternalSwiftProtobuf.SimpleExtensionMap`.
let ProtobufUnittest_Extend3_UnittestSwiftExtension3_Extensions: InternalSwiftProtobuf.SimpleExtensionMap = [
  ProtobufUnittest_Extend3_Extensions_b,
  ProtobufUnittest_Extend3_Extensions_C,
  ProtobufUnittest_Extend3_MyMessage.Extensions.b,
  ProtobufUnittest_Extend3_MyMessage.Extensions.C
]

let ProtobufUnittest_Extend3_Extensions_b = InternalSwiftProtobuf.MessageExtension<InternalSwiftProtobuf.OptionalExtensionField<InternalSwiftProtobuf.ProtobufString>, ProtobufUnittest_Extend_Foo.Bar.Baz>(
  _protobuf_fieldNumber: 320,
  fieldName: "protobuf_unittest.extend3.b"
)

let ProtobufUnittest_Extend3_Extensions_C = InternalSwiftProtobuf.MessageExtension<InternalSwiftProtobuf.OptionalGroupExtensionField<ProtobufUnittest_Extend3_C>, ProtobufUnittest_Extend_Foo.Bar.Baz>(
  _protobuf_fieldNumber: 321,
  fieldName: "protobuf_unittest.extend3.c"
)

extension ProtobufUnittest_Extend3_MyMessage {
  enum Extensions {
    static let b = InternalSwiftProtobuf.MessageExtension<InternalSwiftProtobuf.OptionalExtensionField<InternalSwiftProtobuf.ProtobufString>, ProtobufUnittest_Extend_Foo.Bar.Baz>(
      _protobuf_fieldNumber: 310,
      fieldName: "protobuf_unittest.extend3.MyMessage.b"
    )

    static let C = InternalSwiftProtobuf.MessageExtension<InternalSwiftProtobuf.OptionalGroupExtensionField<ProtobufUnittest_Extend3_MyMessage.C>, ProtobufUnittest_Extend_Foo.Bar.Baz>(
      _protobuf_fieldNumber: 311,
      fieldName: "protobuf_unittest.extend3.MyMessage.c"
    )
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protobuf_unittest.extend3"

extension ProtobufUnittest_Extend3_MyMessage: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MyMessage"
  static let _protobuf_nameMap = InternalSwiftProtobuf._NameMap()

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_Extend3_MyMessage, rhs: ProtobufUnittest_Extend3_MyMessage) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_Extend3_MyMessage.C: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = ProtobufUnittest_Extend3_MyMessage.protoMessageName + ".C"
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1310: .same(proto: "c"),
  ]

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1310: try decoder.decodeSingularInt64Field(value: &self._c)
      default: break
      }
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._c {
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 1310)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_Extend3_MyMessage.C, rhs: ProtobufUnittest_Extend3_MyMessage.C) -> Bool {
    if lhs._c != rhs._c {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_Extend3_C: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".C"
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1320: .same(proto: "c"),
  ]

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1320: try decoder.decodeSingularInt64Field(value: &self._c)
      default: break
      }
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._c {
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 1320)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_Extend3_C, rhs: ProtobufUnittest_Extend3_C) -> Bool {
    if lhs._c != rhs._c {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
