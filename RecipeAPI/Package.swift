// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RecipeAPI",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "RecipeAPI",
            targets: ["RecipeAPI"]),
    ],
    targets: [
        .target(
            name: "RecipeAPI",
            dependencies: []),
        .testTarget(
            name: "RecipeAPITests",
            dependencies: ["RecipeAPI"]),
    ]
)
