// swift-tools-version:5.9.0

import PackageDescription
import Foundation

let package = Package(
    name: "PunycodeSwift",
    products: [
        .library(
            name: "Punycode",
            targets: ["Punycode"]
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
            url: "https://github.com/swift-precompiled/PunycodeSwift/releases/download/3.0.0/Punycode-c5b9bfdcb3606b43c351d1d40544c6642f437a9307d0acfab47b9a8bf6af3c38.xcframework.zip",
            checksum: "c5b9bfdcb3606b43c351d1d40544c6642f437a9307d0acfab47b9a8bf6af3c38"
        )
    ]
)