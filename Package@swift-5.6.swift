// swift-tools-version:5.6

// Package.swift
//
// Copyright (c) 2014 - 2018 Apple Inc. and the project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See LICENSE.txt for license information:
// https://github.com/apple/swift-protobuf/blob/main/LICENSE.txt
//

import PackageDescription

let package = Package(
  name: "SwiftProtobuf",
  products: [
    .executable(name: "protoc-gen-swift", targets: ["protoc-gen-swift"]),
    .library(name: "InternalSwiftProtobuf", targets: ["InternalSwiftProtobuf"]),
    .library(name: "SwiftProtobufPluginLibrary", targets: ["SwiftProtobufPluginLibrary"]),
    .plugin(
        name: "SwiftProtobufPlugin",
        targets: ["SwiftProtobufPlugin"]
    ),
  ],
  targets: [
    .target(name: "InternalSwiftProtobuf", path: "Sources/SwiftProtobuf"),
    .target(name: "SwiftProtobufPluginLibrary",
            dependencies: ["InternalSwiftProtobuf"]),
    .executableTarget(name: "protoc-gen-swift",
            dependencies: ["SwiftProtobufPluginLibrary", "InternalSwiftProtobuf"]),
    .executableTarget(name: "Conformance",
            dependencies: ["InternalSwiftProtobuf"]),
    .plugin(
        name: "SwiftProtobufPlugin",
        capability: .buildTool(),
        dependencies: [
            "protoc-gen-swift"
        ]
    ),
    .testTarget(name: "SwiftProtobufTests",
                dependencies: ["InternalSwiftProtobuf"]),
    .testTarget(name: "SwiftProtobufPluginLibraryTests",
                dependencies: ["SwiftProtobufPluginLibrary"]),
  ],
  swiftLanguageVersions: [.v4, .v4_2, .version("5")]
)
