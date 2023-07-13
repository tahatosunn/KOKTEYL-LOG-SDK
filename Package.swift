// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KOKTEYL-LOG-SDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "KOKTEYL-LOG-SDK",
            targets: ["KOKTEYL-LOG-SDK"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "KOKTEYL-LOG-SDK",
            dependencies: [
                .target(name: "KKLog")
            ],
            publicHeadersPath: "include"
        ),
        .binaryTarget(name: "KKLog",
                      path: "KKLog/KKLog.xcframework"),
        .testTarget(
            name: "KOKTEYL-LOG-SDKTests",
            dependencies: ["KOKTEYL-LOG-SDK"]),
        
        
    ]
)
