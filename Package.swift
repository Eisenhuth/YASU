// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "YASU",
    platforms: [.iOS(.v15), .macOS(.v12), .visionOS(.v1)],
    products: [
        .library(
            name: "YASU",
            targets: ["YASU"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-server/async-http-client.git", from: "1.9.0")
    ],
    targets: [
        .target(
            name: "YASU",
            dependencies: [.product(name: "AsyncHTTPClient", package: "async-http-client")]
        )
    ]
)
