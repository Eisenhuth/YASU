// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "YASU - Yet Another Swift Utility",
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
