// swift-tools-version:5.9.0

import PackageDescription
import Foundation

let package = Package(
    name: "PunycodeSwift",
    products: [
        .library(
            name: "Punycode",
            targets: ["Punycode_PrecompiledProduct"]
        )
    ],
    targets: [
        .target(
            name: "Punycode_Aggregation",
            dependencies: ["Punycode"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Punycode",
            url: "https://github.com/swift-precompiled/PunycodeSwift/releases/download/3.0.0/Punycode-c3b85dedfc7653b259d3a29aad1318457cf1f3b4c8be41c2a7970c296db9fb89.xcframework.zip",
            checksum: "c3b85dedfc7653b259d3a29aad1318457cf1f3b4c8be41c2a7970c296db9fb89"
        ),
        .target(
            name: "Punycode_PrecompiledProduct",
            dependencies: ["Punycode_Aggregation"]
        )
    ]
)