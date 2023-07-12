// swift-tools-version:5.3
// Bu satırda, Swift sürümünü belirtmelisiniz.

import PackageDescription

let package = Package(
    name: "KokteylLog",
    platforms: [
        .iOS(.v9) // veya projenin gereksinimlerine göre değiştirin
    ],
    products: [
        .library(
            name: "KokteylLog",
            targets: ["KokteylLog"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "KokteylLog",
            dependencies: [],
            path: "KKLog",
            resources: [
                .process("KKLog.xcframework")
            ],
            cSettings: [
                .headerSearchPath("KKLog/include"),
            ]
        )
    ]
)
