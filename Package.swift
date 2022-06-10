// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnyAsyncSequence",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_12),
        .tvOS(.v11),
        .watchOS(.v4)
    ],
    products: [
        .library(
            name: "AnyAsyncSequence",
            targets: ["AnyAsyncSequence"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "AnyAsyncSequence",
            dependencies: []
        ),
        .testTarget(
            name: "AnyAsyncSequenceTests",
            dependencies: ["AnyAsyncSequence"]
        ),
    ]
)
