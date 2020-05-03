// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: unittest_swift_enum_proto3.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protocol Buffers - Google's data interchange format
// Copyright 2015 Apple, Inc.  All Rights Reserved.
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

struct Protobuf3Unittest_SwiftEnumTest {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var values1: [Protobuf3Unittest_SwiftEnumTest.EnumTest1] = []

  var values2: [Protobuf3Unittest_SwiftEnumTest.EnumTest2] = []

  var values3: [Protobuf3Unittest_SwiftEnumTest.EnumTestNoStem] = []

  var values4: [Protobuf3Unittest_SwiftEnumTest.EnumTestReservedWord] = []

  var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  enum EnumTest1: InternalSwiftProtobuf.Enum {
    typealias RawValue = Int
    case firstValue // = 0
    case secondValue // = 2
    case UNRECOGNIZED(Int)

    init() {
      self = .firstValue
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .firstValue
      case 2: self = .secondValue
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .firstValue: return 0
      case .secondValue: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  enum EnumTest2: InternalSwiftProtobuf.Enum {
    typealias RawValue = Int
    case firstValue // = 0
    case secondValue // = 2
    case UNRECOGNIZED(Int)

    init() {
      self = .firstValue
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .firstValue
      case 2: self = .secondValue
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .firstValue: return 0
      case .secondValue: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  enum EnumTestNoStem: InternalSwiftProtobuf.Enum {
    typealias RawValue = Int
    case enumTestNoStem1 // = 0
    case enumTestNoStem2 // = 2
    case UNRECOGNIZED(Int)

    init() {
      self = .enumTestNoStem1
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .enumTestNoStem1
      case 2: self = .enumTestNoStem2
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .enumTestNoStem1: return 0
      case .enumTestNoStem2: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  enum EnumTestReservedWord: InternalSwiftProtobuf.Enum {
    typealias RawValue = Int
    case `var` // = 0
    case notReserved // = 2
    case UNRECOGNIZED(Int)

    init() {
      self = .var
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .var
      case 2: self = .notReserved
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .var: return 0
      case .notReserved: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension Protobuf3Unittest_SwiftEnumTest.EnumTest1: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Protobuf3Unittest_SwiftEnumTest.EnumTest1] = [
    .firstValue,
    .secondValue,
  ]
}

extension Protobuf3Unittest_SwiftEnumTest.EnumTest2: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Protobuf3Unittest_SwiftEnumTest.EnumTest2] = [
    .firstValue,
    .secondValue,
  ]
}

extension Protobuf3Unittest_SwiftEnumTest.EnumTestNoStem: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Protobuf3Unittest_SwiftEnumTest.EnumTestNoStem] = [
    .enumTestNoStem1,
    .enumTestNoStem2,
  ]
}

extension Protobuf3Unittest_SwiftEnumTest.EnumTestReservedWord: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Protobuf3Unittest_SwiftEnumTest.EnumTestReservedWord] = [
    .var,
    .notReserved,
  ]
}

#endif  // swift(>=4.2)

struct Protobuf3Unittest_SwiftEnumWithAliasTest {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var values: [Protobuf3Unittest_SwiftEnumWithAliasTest.EnumWithAlias] = []

  var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  enum EnumWithAlias: InternalSwiftProtobuf.Enum {
    typealias RawValue = Int
    case foo1 // = 0
    static let foo2 = foo1

    /// out of value order to test allCases
    case baz1 // = 3
    case bar1 // = 2
    static let bar2 = bar1
    case UNRECOGNIZED(Int)

    init() {
      self = .foo1
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .foo1
      case 2: self = .bar1
      case 3: self = .baz1
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .foo1: return 0
      case .bar1: return 2
      case .baz1: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension Protobuf3Unittest_SwiftEnumWithAliasTest.EnumWithAlias: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Protobuf3Unittest_SwiftEnumWithAliasTest.EnumWithAlias] = [
    .foo1,
    .baz1,
    .bar1,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protobuf3_unittest"

extension Protobuf3Unittest_SwiftEnumTest: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SwiftEnumTest"
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .same(proto: "values1"),
    2: .same(proto: "values2"),
    3: .same(proto: "values3"),
    4: .same(proto: "values4"),
  ]

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedEnumField(value: &self.values1)
      case 2: try decoder.decodeRepeatedEnumField(value: &self.values2)
      case 3: try decoder.decodeRepeatedEnumField(value: &self.values3)
      case 4: try decoder.decodeRepeatedEnumField(value: &self.values4)
      default: break
      }
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.values1.isEmpty {
      try visitor.visitPackedEnumField(value: self.values1, fieldNumber: 1)
    }
    if !self.values2.isEmpty {
      try visitor.visitPackedEnumField(value: self.values2, fieldNumber: 2)
    }
    if !self.values3.isEmpty {
      try visitor.visitPackedEnumField(value: self.values3, fieldNumber: 3)
    }
    if !self.values4.isEmpty {
      try visitor.visitPackedEnumField(value: self.values4, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protobuf3Unittest_SwiftEnumTest, rhs: Protobuf3Unittest_SwiftEnumTest) -> Bool {
    if lhs.values1 != rhs.values1 {return false}
    if lhs.values2 != rhs.values2 {return false}
    if lhs.values3 != rhs.values3 {return false}
    if lhs.values4 != rhs.values4 {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protobuf3Unittest_SwiftEnumTest.EnumTest1: InternalSwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    0: .same(proto: "ENUM_TEST_1_FIRST_VALUE"),
    2: .same(proto: "ENUM_TEST_1_SECOND_VALUE"),
  ]
}

extension Protobuf3Unittest_SwiftEnumTest.EnumTest2: InternalSwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    0: .same(proto: "ENUM_TEST_2_FIRST_VALUE"),
    2: .same(proto: "SECOND_VALUE"),
  ]
}

extension Protobuf3Unittest_SwiftEnumTest.EnumTestNoStem: InternalSwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    0: .same(proto: "ENUM_TEST_NO_STEM_1"),
    2: .same(proto: "ENUM_TEST_NO_STEM_2"),
  ]
}

extension Protobuf3Unittest_SwiftEnumTest.EnumTestReservedWord: InternalSwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    0: .same(proto: "ENUM_TEST_RESERVED_WORD_VAR"),
    2: .same(proto: "ENUM_TEST_RESERVED_WORD_NOT_RESERVED"),
  ]
}

extension Protobuf3Unittest_SwiftEnumWithAliasTest: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SwiftEnumWithAliasTest"
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .same(proto: "values"),
  ]

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedEnumField(value: &self.values)
      default: break
      }
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.values.isEmpty {
      try visitor.visitPackedEnumField(value: self.values, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protobuf3Unittest_SwiftEnumWithAliasTest, rhs: Protobuf3Unittest_SwiftEnumWithAliasTest) -> Bool {
    if lhs.values != rhs.values {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protobuf3Unittest_SwiftEnumWithAliasTest.EnumWithAlias: InternalSwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    0: .aliased(proto: "FOO1", aliases: ["FOO2"]),
    2: .aliased(proto: "BAR1", aliases: ["BAR2"]),
    3: .same(proto: "BAZ1"),
  ]
}
