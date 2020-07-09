// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/protobuf/compiler/plugin.proto
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

// Author: kenton@google.com (Kenton Varda)
//
// WARNING:  The plugin interface is currently EXPERIMENTAL and is subject to
//   change.
//
// protoc (aka the Protocol Compiler) can be extended via plugins.  A plugin is
// just a program that reads a CodeGeneratorRequest from stdin and writes a
// CodeGeneratorResponse to stdout.
//
// Plugins written using C++ can use google/protobuf/compiler/plugin.h instead
// of dealing with the raw protocol defined here.
//
// A plugin executable needs only to be placed somewhere in the path.  The
// plugin should be named "protoc-gen-$NAME", and will then be used when the
// flag "--${NAME}_out" is passed to protoc.

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

/// The version number of protocol compiler.
public struct Google_Protobuf_Compiler_Version {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var major: Int32 {
    get {return _major ?? 0}
    set {_major = newValue}
  }
  /// Returns true if `major` has been explicitly set.
  public var hasMajor: Bool {return self._major != nil}
  /// Clears the value of `major`. Subsequent reads from it will return its default value.
  public mutating func clearMajor() {self._major = nil}

  public var minor: Int32 {
    get {return _minor ?? 0}
    set {_minor = newValue}
  }
  /// Returns true if `minor` has been explicitly set.
  public var hasMinor: Bool {return self._minor != nil}
  /// Clears the value of `minor`. Subsequent reads from it will return its default value.
  public mutating func clearMinor() {self._minor = nil}

  public var patch: Int32 {
    get {return _patch ?? 0}
    set {_patch = newValue}
  }
  /// Returns true if `patch` has been explicitly set.
  public var hasPatch: Bool {return self._patch != nil}
  /// Clears the value of `patch`. Subsequent reads from it will return its default value.
  public mutating func clearPatch() {self._patch = nil}

  /// A suffix for alpha, beta or rc release, e.g., "alpha-1", "rc2". It should
  /// be empty for mainline stable releases.
  public var suffix: String {
    get {return _suffix ?? String()}
    set {_suffix = newValue}
  }
  /// Returns true if `suffix` has been explicitly set.
  public var hasSuffix: Bool {return self._suffix != nil}
  /// Clears the value of `suffix`. Subsequent reads from it will return its default value.
  public mutating func clearSuffix() {self._suffix = nil}

  public var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _major: Int32? = nil
  fileprivate var _minor: Int32? = nil
  fileprivate var _patch: Int32? = nil
  fileprivate var _suffix: String? = nil
}

/// An encoded CodeGeneratorRequest is written to the plugin's stdin.
public struct Google_Protobuf_Compiler_CodeGeneratorRequest {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The .proto files that were explicitly listed on the command-line.  The
  /// code generator should generate code only for these files.  Each file's
  /// descriptor will be included in proto_file, below.
  public var fileToGenerate: [String] = []

  /// The generator parameter passed on the command-line.
  public var parameter: String {
    get {return _parameter ?? String()}
    set {_parameter = newValue}
  }
  /// Returns true if `parameter` has been explicitly set.
  public var hasParameter: Bool {return self._parameter != nil}
  /// Clears the value of `parameter`. Subsequent reads from it will return its default value.
  public mutating func clearParameter() {self._parameter = nil}

  /// FileDescriptorProtos for all files in files_to_generate and everything
  /// they import.  The files will appear in topological order, so each file
  /// appears before any file that imports it.
  ///
  /// protoc guarantees that all proto_files will be written after
  /// the fields above, even though this is not technically guaranteed by the
  /// protobuf wire format.  This theoretically could allow a plugin to stream
  /// in the FileDescriptorProtos and handle them one by one rather than read
  /// the entire set into memory at once.  However, as of this writing, this
  /// is not similarly optimized on protoc's end -- it will store all fields in
  /// memory at once before sending them to the plugin.
  ///
  /// Type names of fields and extensions in the FileDescriptorProto are always
  /// fully qualified.
  public var protoFile: [InternalSwiftProtobuf.Google_Protobuf_FileDescriptorProto] = []

  /// The version number of protocol compiler.
  public var compilerVersion: Google_Protobuf_Compiler_Version {
    get {return _compilerVersion ?? Google_Protobuf_Compiler_Version()}
    set {_compilerVersion = newValue}
  }
  /// Returns true if `compilerVersion` has been explicitly set.
  public var hasCompilerVersion: Bool {return self._compilerVersion != nil}
  /// Clears the value of `compilerVersion`. Subsequent reads from it will return its default value.
  public mutating func clearCompilerVersion() {self._compilerVersion = nil}

  public var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _parameter: String? = nil
  fileprivate var _compilerVersion: Google_Protobuf_Compiler_Version? = nil
}

/// The plugin writes an encoded CodeGeneratorResponse to stdout.
public struct Google_Protobuf_Compiler_CodeGeneratorResponse {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Error message.  If non-empty, code generation failed.  The plugin process
  /// should exit with status code zero even if it reports an error in this way.
  ///
  /// This should be used to indicate errors in .proto files which prevent the
  /// code generator from generating correct code.  Errors which indicate a
  /// problem in protoc itself -- such as the input CodeGeneratorRequest being
  /// unparseable -- should be reported by writing a message to stderr and
  /// exiting with a non-zero status code.
  public var error: String {
    get {return _error ?? String()}
    set {_error = newValue}
  }
  /// Returns true if `error` has been explicitly set.
  public var hasError: Bool {return self._error != nil}
  /// Clears the value of `error`. Subsequent reads from it will return its default value.
  public mutating func clearError() {self._error = nil}

  /// A bitmask of supported features that the code generator supports.
  /// This is a bitwise "or" of values from the Feature enum.
  public var supportedFeatures: UInt64 {
    get {return _supportedFeatures ?? 0}
    set {_supportedFeatures = newValue}
  }
  /// Returns true if `supportedFeatures` has been explicitly set.
  public var hasSupportedFeatures: Bool {return self._supportedFeatures != nil}
  /// Clears the value of `supportedFeatures`. Subsequent reads from it will return its default value.
  public mutating func clearSupportedFeatures() {self._supportedFeatures = nil}

  public var file: [Google_Protobuf_Compiler_CodeGeneratorResponse.File] = []

  public var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  /// Sync with code_generator.h.
  public enum Feature: InternalSwiftProtobuf.Enum {
    public typealias RawValue = Int
    case none // = 0
    case proto3Optional // = 1

    public init() {
      self = .none
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .none
      case 1: self = .proto3Optional
      default: return nil
      }
    }

    public var rawValue: Int {
      switch self {
      case .none: return 0
      case .proto3Optional: return 1
      }
    }

  }

  /// Represents a single generated file.
  public struct File {
    // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The file name, relative to the output directory.  The name must not
    /// contain "." or ".." components and must be relative, not be absolute (so,
    /// the file cannot lie outside the output directory).  "/" must be used as
    /// the path separator, not "\".
    ///
    /// If the name is omitted, the content will be appended to the previous
    /// file.  This allows the generator to break large files into small chunks,
    /// and allows the generated text to be streamed back to protoc so that large
    /// files need not reside completely in memory at one time.  Note that as of
    /// this writing protoc does not optimize for this -- it will read the entire
    /// CodeGeneratorResponse before writing files to disk.
    public var name: String {
      get {return _name ?? String()}
      set {_name = newValue}
    }
    /// Returns true if `name` has been explicitly set.
    public var hasName: Bool {return self._name != nil}
    /// Clears the value of `name`. Subsequent reads from it will return its default value.
    public mutating func clearName() {self._name = nil}

    /// If non-empty, indicates that the named file should already exist, and the
    /// content here is to be inserted into that file at a defined insertion
    /// point.  This feature allows a code generator to extend the output
    /// produced by another code generator.  The original generator may provide
    /// insertion points by placing special annotations in the file that look
    /// like:
    ///   @@protoc_insertion_point(NAME)
    /// The annotation can have arbitrary text before and after it on the line,
    /// which allows it to be placed in a comment.  NAME should be replaced with
    /// an identifier naming the point -- this is what other generators will use
    /// as the insertion_point.  Code inserted at this point will be placed
    /// immediately above the line containing the insertion point (thus multiple
    /// insertions to the same point will come out in the order they were added).
    /// The double-@ is intended to make it unlikely that the generated code
    /// could contain things that look like insertion points by accident.
    ///
    /// For example, the C++ code generator places the following line in the
    /// .pb.h files that it generates:
    ///   // @@protoc_insertion_point(namespace_scope)
    /// This line appears within the scope of the file's package namespace, but
    /// outside of any particular class.  Another plugin can then specify the
    /// insertion_point "namespace_scope" to generate additional classes or
    /// other declarations that should be placed in this scope.
    ///
    /// Note that if the line containing the insertion point begins with
    /// whitespace, the same whitespace will be added to every line of the
    /// inserted text.  This is useful for languages like Python, where
    /// indentation matters.  In these languages, the insertion point comment
    /// should be indented the same amount as any inserted code will need to be
    /// in order to work correctly in that context.
    ///
    /// The code generator that generates the initial file and the one which
    /// inserts into it must both run as part of a single invocation of protoc.
    /// Code generators are executed in the order in which they appear on the
    /// command line.
    ///
    /// If |insertion_point| is present, |name| must also be present.
    public var insertionPoint: String {
      get {return _insertionPoint ?? String()}
      set {_insertionPoint = newValue}
    }
    /// Returns true if `insertionPoint` has been explicitly set.
    public var hasInsertionPoint: Bool {return self._insertionPoint != nil}
    /// Clears the value of `insertionPoint`. Subsequent reads from it will return its default value.
    public mutating func clearInsertionPoint() {self._insertionPoint = nil}

    /// The file contents.
    public var content: String {
      get {return _content ?? String()}
      set {_content = newValue}
    }
    /// Returns true if `content` has been explicitly set.
    public var hasContent: Bool {return self._content != nil}
    /// Clears the value of `content`. Subsequent reads from it will return its default value.
    public mutating func clearContent() {self._content = nil}

    public var unknownFields = InternalSwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _name: String? = nil
    fileprivate var _insertionPoint: String? = nil
    fileprivate var _content: String? = nil
  }

  public init() {}

  fileprivate var _error: String? = nil
  fileprivate var _supportedFeatures: UInt64? = nil
}

#if swift(>=4.2)

extension Google_Protobuf_Compiler_CodeGeneratorResponse.Feature: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.protobuf.compiler"

extension Google_Protobuf_Compiler_Version: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Version"
  public static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .same(proto: "major"),
    2: .same(proto: "minor"),
    3: .same(proto: "patch"),
    4: .same(proto: "suffix"),
  ]

  public mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self._major)
      case 2: try decoder.decodeSingularInt32Field(value: &self._minor)
      case 3: try decoder.decodeSingularInt32Field(value: &self._patch)
      case 4: try decoder.decodeSingularStringField(value: &self._suffix)
      default: break
      }
    }
  }

  public func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._major {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    }
    if let v = self._minor {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
    }
    if let v = self._patch {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 3)
    }
    if let v = self._suffix {
      try visitor.visitSingularStringField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Protobuf_Compiler_Version, rhs: Google_Protobuf_Compiler_Version) -> Bool {
    if lhs._major != rhs._major {return false}
    if lhs._minor != rhs._minor {return false}
    if lhs._patch != rhs._patch {return false}
    if lhs._suffix != rhs._suffix {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Protobuf_Compiler_CodeGeneratorRequest: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CodeGeneratorRequest"
  public static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .standard(proto: "file_to_generate"),
    2: .same(proto: "parameter"),
    15: .standard(proto: "proto_file"),
    3: .standard(proto: "compiler_version"),
  ]

  public var isInitialized: Bool {
    if !InternalSwiftProtobuf.Internal.areAllInitialized(self.protoFile) {return false}
    return true
  }

  public mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedStringField(value: &self.fileToGenerate)
      case 2: try decoder.decodeSingularStringField(value: &self._parameter)
      case 3: try decoder.decodeSingularMessageField(value: &self._compilerVersion)
      case 15: try decoder.decodeRepeatedMessageField(value: &self.protoFile)
      default: break
      }
    }
  }

  public func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.fileToGenerate.isEmpty {
      try visitor.visitRepeatedStringField(value: self.fileToGenerate, fieldNumber: 1)
    }
    if let v = self._parameter {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }
    if let v = self._compilerVersion {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.protoFile.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.protoFile, fieldNumber: 15)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Protobuf_Compiler_CodeGeneratorRequest, rhs: Google_Protobuf_Compiler_CodeGeneratorRequest) -> Bool {
    if lhs.fileToGenerate != rhs.fileToGenerate {return false}
    if lhs._parameter != rhs._parameter {return false}
    if lhs.protoFile != rhs.protoFile {return false}
    if lhs._compilerVersion != rhs._compilerVersion {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Protobuf_Compiler_CodeGeneratorResponse: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CodeGeneratorResponse"
  public static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .same(proto: "error"),
    2: .standard(proto: "supported_features"),
    15: .same(proto: "file"),
  ]

  public mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self._error)
      case 2: try decoder.decodeSingularUInt64Field(value: &self._supportedFeatures)
      case 15: try decoder.decodeRepeatedMessageField(value: &self.file)
      default: break
      }
    }
  }

  public func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._error {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    }
    if let v = self._supportedFeatures {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 2)
    }
    if !self.file.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.file, fieldNumber: 15)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Protobuf_Compiler_CodeGeneratorResponse, rhs: Google_Protobuf_Compiler_CodeGeneratorResponse) -> Bool {
    if lhs._error != rhs._error {return false}
    if lhs._supportedFeatures != rhs._supportedFeatures {return false}
    if lhs.file != rhs.file {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Protobuf_Compiler_CodeGeneratorResponse.Feature: InternalSwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    0: .same(proto: "FEATURE_NONE"),
    1: .same(proto: "FEATURE_PROTO3_OPTIONAL"),
  ]
}

extension Google_Protobuf_Compiler_CodeGeneratorResponse.File: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Protobuf_Compiler_CodeGeneratorResponse.protoMessageName + ".File"
  public static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "insertion_point"),
    15: .same(proto: "content"),
  ]

  public mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self._name)
      case 2: try decoder.decodeSingularStringField(value: &self._insertionPoint)
      case 15: try decoder.decodeSingularStringField(value: &self._content)
      default: break
      }
    }
  }

  public func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._name {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    }
    if let v = self._insertionPoint {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }
    if let v = self._content {
      try visitor.visitSingularStringField(value: v, fieldNumber: 15)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Protobuf_Compiler_CodeGeneratorResponse.File, rhs: Google_Protobuf_Compiler_CodeGeneratorResponse.File) -> Bool {
    if lhs._name != rhs._name {return false}
    if lhs._insertionPoint != rhs._insertionPoint {return false}
    if lhs._content != rhs._content {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
