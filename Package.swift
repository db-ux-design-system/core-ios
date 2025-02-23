// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DBUXDS",
    platforms: [.iOS(.v18)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DBUXDS",
            targets: ["DBUXFoundation", "DBUXComponents"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DBUXFoundation",
            resources: [
                .process("Resources"),
//                .process("Resources/DBNeoScreenFlex.ttf"),
//                .process("Resources/DBNeoScreenSans-Black.ttf")
            ]
        ),
        .target(
            name: "DBUXComponents",
            dependencies: ["DBUXFoundation"]
        ),
        .testTarget(
            name: "DBUXDSTests",
            dependencies: ["DBUXFoundation", "DBUXComponents"]
        ),
    ]
)
