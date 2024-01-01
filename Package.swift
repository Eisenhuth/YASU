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
    targets: [
        .target(
            name: "YASU")
    ]
)
