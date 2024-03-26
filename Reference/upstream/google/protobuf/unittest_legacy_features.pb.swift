// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/protobuf/unittest_legacy_features.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protocol Buffers - Google's data interchange format
// Copyright 2008 Google Inc.  All rights reserved.
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

// Test that features with legacy descriptor helpers get properly converted.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _3: SwiftProtobuf.ProtobufAPIVersion_3 {}
  typealias Version = _3
}

struct LegacyFeaturesUnittest_TestEditionsMessage: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var requiredField: Int32 {
    get {return _storage._requiredField ?? 0}
    set {_uniqueStorage()._requiredField = newValue}
  }
  /// Returns true if `requiredField` has been explicitly set.
  var hasRequiredField: Bool {return _storage._requiredField != nil}
  /// Clears the value of `requiredField`. Subsequent reads from it will return its default value.
  mutating func clearRequiredField() {_uniqueStorage()._requiredField = nil}

  var testEditionsMessage: LegacyFeaturesUnittest_TestEditionsMessage {
    get {return _storage._testEditionsMessage ?? LegacyFeaturesUnittest_TestEditionsMessage()}
    set {_uniqueStorage()._testEditionsMessage = newValue}
  }
  /// Returns true if `testEditionsMessage` has been explicitly set.
  var hasTestEditionsMessage: Bool {return _storage._testEditionsMessage != nil}
  /// Clears the value of `testEditionsMessage`. Subsequent reads from it will return its default value.
  mutating func clearTestEditionsMessage() {_uniqueStorage()._testEditionsMessage = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "legacy_features_unittest"

extension LegacyFeaturesUnittest_TestEditionsMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestEditionsMessage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "required_field"),
    2: .unique(proto: "TestEditionsMessage", json: "delimitedField"),
  ]

  fileprivate class _StorageClass {
    var _requiredField: Int32? = nil
    var _testEditionsMessage: LegacyFeaturesUnittest_TestEditionsMessage? = nil

    #if swift(>=5.10)
      // This property is used as the initial default value for new instances of the type.
      // The type itself is protecting the reference to its storage via CoW semantics.
      // This will force a copy to be made of this reference when the first mutation occurs;
      // hence, it is safe to mark this as `nonisolated(unsafe)`.
      static nonisolated(unsafe) let defaultInstance = _StorageClass()
    #else
      static let defaultInstance = _StorageClass()
    #endif

    private init() {}

    init(copying source: _StorageClass) {
      _requiredField = source._requiredField
      _testEditionsMessage = source._testEditionsMessage
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public var isInitialized: Bool {
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._requiredField == nil {return false}
      if let v = _storage._testEditionsMessage, !v.isInitialized {return false}
      return true
    }
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularInt32Field(value: &_storage._requiredField) }()
        case 2: try { try decoder.decodeSingularGroupField(value: &_storage._testEditionsMessage) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      try { if let v = _storage._requiredField {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
      } }()
      try { if let v = _storage._testEditionsMessage {
        try visitor.visitSingularGroupField(value: v, fieldNumber: 2)
      } }()
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: LegacyFeaturesUnittest_TestEditionsMessage, rhs: LegacyFeaturesUnittest_TestEditionsMessage) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._requiredField != rhs_storage._requiredField {return false}
        if _storage._testEditionsMessage != rhs_storage._testEditionsMessage {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
