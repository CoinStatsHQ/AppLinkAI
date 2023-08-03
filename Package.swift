// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppLinkAI",
    products: [
        .library(
            name: "AppLinkAI",
            targets: ["AppLinkAI"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "AppLinkAI", path: "./AppLinkAI.xcframework")
    ]
)
