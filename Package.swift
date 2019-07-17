// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "NIOErrorKit",
    products: [
        .library(name: "NIOErrorKit", targets: ["NIOErrorKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.3.0"),
            .package(url: "https://github.com/Einstore/WebErrorKit.git", from: "0.0.1")
    ],
    targets: [
        .target(
            name: "NIOErrorKit",
            dependencies: [
                "WebErrorKit",
                "NIO",
                "NIOHTTP1"
            ]
        )
    ]
)


