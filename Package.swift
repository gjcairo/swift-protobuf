// swift-tools-version:4.2

// Package.swift
//
// Copyright (c) 2014 - 2018 Apple Inc. and the project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See LICENSE.txt for license information:
// https://github.com/apple/swift-protobuf/blob/master/LICENSE.txt
//

import PackageDescription

let package = Package(
  name: "SwiftProtobuf",
  products: [
    .executable(name: "protoc-gen-swift", targets: ["protoc-gen-swift"]),
    .library(name: "InternalSwiftProtobuf", targets: ["InternalSwiftProtobuf"]),
    .library(name: "SwiftProtobufPluginLibrary", targets: ["SwiftProtobufPluginLibrary"]),
  ],
  targets: [
    .target(name: "InternalSwiftProtobuf", path: "Sources/SwiftProtobuf"),
    .target(name: "SwiftProtobufPluginLibrary",
            dependencies: ["InternalSwiftProtobuf"]),
    .target(name: "protoc-gen-swift",
            dependencies: ["SwiftProtobufPluginLibrary", "InternalSwiftProtobuf"]),
    .target(name: "Conformance",
            dependencies: ["InternalSwiftProtobuf"]),
    .testTarget(name: "SwiftProtobufTests",
                dependencies: ["InternalSwiftProtobuf"]),
    .testTarget(name: "SwiftProtobufPluginLibraryTests",
                dependencies: ["SwiftProtobufPluginLibrary"]),
  ],
  swiftLanguageVersions: [.v4, .v4_2, .version("5")]
)
