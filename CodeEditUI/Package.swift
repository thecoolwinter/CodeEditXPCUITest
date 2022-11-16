// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CodeEditUI",
    platforms: [.macOS(.v12)],
    products: [
        .library(name: "CodeEditUI", targets: ["CodeEditUI"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CodeEditUI",
            dependencies: []),
        .testTarget(
            name: "CodeEditUITests",
            dependencies: ["CodeEditUI"]),
    ]
)
