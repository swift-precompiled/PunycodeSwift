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
            packageAccess: false,
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Punycode",
            url: "https://github.com/swift-precompiled/PunycodeSwift/releases/download/3.0.0/Punycode-84b3358da077aaac42168ef5498eea4d67c4f938407a76f31b4b9b8b9788d495.xcframework.zip",
            checksum: "84b3358da077aaac42168ef5498eea4d67c4f938407a76f31b4b9b8b9788d495"
        )
    ]
)