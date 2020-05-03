// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: unittest_swift_cycle.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protocol Buffers - Google's data interchange format
// Copyright 2015 Google Inc.  All rights reserved.
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

struct ProtobufUnittest_CycleFoo {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var aFoo: ProtobufUnittest_CycleFoo {
    get {return _storage._aFoo ?? ProtobufUnittest_CycleFoo()}
    set {_uniqueStorage()._aFoo = newValue}
  }
  /// Returns true if `aFoo` has been explicitly set.
  var hasAFoo: Bool {return _storage._aFoo != nil}
  /// Clears the value of `aFoo`. Subsequent reads from it will return its default value.
  mutating func clearAFoo() {_uniqueStorage()._aFoo = nil}

  var aBar: ProtobufUnittest_CycleBar {
    get {return _storage._aBar ?? ProtobufUnittest_CycleBar()}
    set {_uniqueStorage()._aBar = newValue}
  }
  /// Returns true if `aBar` has been explicitly set.
  var hasABar: Bool {return _storage._aBar != nil}
  /// Clears the value of `aBar`. Subsequent reads from it will return its default value.
  mutating func clearABar() {_uniqueStorage()._aBar = nil}

  var aBaz: ProtobufUnittest_CycleBaz {
    get {return _storage._aBaz ?? ProtobufUnittest_CycleBaz()}
    set {_uniqueStorage()._aBaz = newValue}
  }
  /// Returns true if `aBaz` has been explicitly set.
  var hasABaz: Bool {return _storage._aBaz != nil}
  /// Clears the value of `aBaz`. Subsequent reads from it will return its default value.
  mutating func clearABaz() {_uniqueStorage()._aBaz = nil}

  var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct ProtobufUnittest_CycleBar {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var aBar: ProtobufUnittest_CycleBar {
    get {return _storage._aBar ?? ProtobufUnittest_CycleBar()}
    set {_uniqueStorage()._aBar = newValue}
  }
  /// Returns true if `aBar` has been explicitly set.
  var hasABar: Bool {return _storage._aBar != nil}
  /// Clears the value of `aBar`. Subsequent reads from it will return its default value.
  mutating func clearABar() {_uniqueStorage()._aBar = nil}

  var aBaz: ProtobufUnittest_CycleBaz {
    get {return _storage._aBaz ?? ProtobufUnittest_CycleBaz()}
    set {_uniqueStorage()._aBaz = newValue}
  }
  /// Returns true if `aBaz` has been explicitly set.
  var hasABaz: Bool {return _storage._aBaz != nil}
  /// Clears the value of `aBaz`. Subsequent reads from it will return its default value.
  mutating func clearABaz() {_uniqueStorage()._aBaz = nil}

  var aFoo: ProtobufUnittest_CycleFoo {
    get {return _storage._aFoo ?? ProtobufUnittest_CycleFoo()}
    set {_uniqueStorage()._aFoo = newValue}
  }
  /// Returns true if `aFoo` has been explicitly set.
  var hasAFoo: Bool {return _storage._aFoo != nil}
  /// Clears the value of `aFoo`. Subsequent reads from it will return its default value.
  mutating func clearAFoo() {_uniqueStorage()._aFoo = nil}

  var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct ProtobufUnittest_CycleBaz {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var aBaz: ProtobufUnittest_CycleBaz {
    get {return _storage._aBaz ?? ProtobufUnittest_CycleBaz()}
    set {_uniqueStorage()._aBaz = newValue}
  }
  /// Returns true if `aBaz` has been explicitly set.
  var hasABaz: Bool {return _storage._aBaz != nil}
  /// Clears the value of `aBaz`. Subsequent reads from it will return its default value.
  mutating func clearABaz() {_uniqueStorage()._aBaz = nil}

  var aFoo: ProtobufUnittest_CycleFoo {
    get {return _storage._aFoo ?? ProtobufUnittest_CycleFoo()}
    set {_uniqueStorage()._aFoo = newValue}
  }
  /// Returns true if `aFoo` has been explicitly set.
  var hasAFoo: Bool {return _storage._aFoo != nil}
  /// Clears the value of `aFoo`. Subsequent reads from it will return its default value.
  mutating func clearAFoo() {_uniqueStorage()._aFoo = nil}

  var aBar: ProtobufUnittest_CycleBar {
    get {return _storage._aBar ?? ProtobufUnittest_CycleBar()}
    set {_uniqueStorage()._aBar = newValue}
  }
  /// Returns true if `aBar` has been explicitly set.
  var hasABar: Bool {return _storage._aBar != nil}
  /// Clears the value of `aBar`. Subsequent reads from it will return its default value.
  mutating func clearABar() {_uniqueStorage()._aBar = nil}

  var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protobuf_unittest"

extension ProtobufUnittest_CycleFoo: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CycleFoo"
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .standard(proto: "a_foo"),
    2: .standard(proto: "a_bar"),
    3: .standard(proto: "a_baz"),
  ]

  fileprivate class _StorageClass {
    var _aFoo: ProtobufUnittest_CycleFoo? = nil
    var _aBar: ProtobufUnittest_CycleBar? = nil
    var _aBaz: ProtobufUnittest_CycleBaz? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _aFoo = source._aFoo
      _aBar = source._aBar
      _aBaz = source._aBaz
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._aFoo)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._aBar)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._aBaz)
        default: break
        }
      }
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._aFoo {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._aBar {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._aBaz {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_CycleFoo, rhs: ProtobufUnittest_CycleFoo) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._aFoo != rhs_storage._aFoo {return false}
        if _storage._aBar != rhs_storage._aBar {return false}
        if _storage._aBaz != rhs_storage._aBaz {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_CycleBar: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CycleBar"
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .standard(proto: "a_bar"),
    2: .standard(proto: "a_baz"),
    3: .standard(proto: "a_foo"),
  ]

  fileprivate class _StorageClass {
    var _aBar: ProtobufUnittest_CycleBar? = nil
    var _aBaz: ProtobufUnittest_CycleBaz? = nil
    var _aFoo: ProtobufUnittest_CycleFoo? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _aBar = source._aBar
      _aBaz = source._aBaz
      _aFoo = source._aFoo
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._aBar)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._aBaz)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._aFoo)
        default: break
        }
      }
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._aBar {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._aBaz {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._aFoo {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_CycleBar, rhs: ProtobufUnittest_CycleBar) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._aBar != rhs_storage._aBar {return false}
        if _storage._aBaz != rhs_storage._aBaz {return false}
        if _storage._aFoo != rhs_storage._aFoo {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_CycleBaz: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CycleBaz"
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .standard(proto: "a_baz"),
    2: .standard(proto: "a_foo"),
    3: .standard(proto: "a_bar"),
  ]

  fileprivate class _StorageClass {
    var _aBaz: ProtobufUnittest_CycleBaz? = nil
    var _aFoo: ProtobufUnittest_CycleFoo? = nil
    var _aBar: ProtobufUnittest_CycleBar? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _aBaz = source._aBaz
      _aFoo = source._aFoo
      _aBar = source._aBar
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._aBaz)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._aFoo)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._aBar)
        default: break
        }
      }
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._aBaz {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._aFoo {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._aBar {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_CycleBaz, rhs: ProtobufUnittest_CycleBaz) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._aBaz != rhs_storage._aBaz {return false}
        if _storage._aFoo != rhs_storage._aFoo {return false}
        if _storage._aBar != rhs_storage._aBar {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
