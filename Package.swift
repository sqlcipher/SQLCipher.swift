// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SQLCipher",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .macCatalyst(.v13),
        .watchOS(.v4),
        .tvOS(.v12),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "SQLCipher",
            targets: ["SQLCipher"]),
    ],
    targets: [
        .binaryTarget(name: "SQLCipher",
                      url: "https://github.com/sqlcipher/SQLCipher.swift/releases/download/4.11.0/SQLCipher.xcframework.zip",
                      checksum: "4a2ec7b682cd9a8724c2da7d1a2c94e0ecfc8d610f8604cac3bb1dd7c23b7db6"
                     ),
        .testTarget(
            name: "SQLCipherTests",
            dependencies: ["SQLCipher"],
            cSettings: [
                .define("SQLITE_HAS_CODEC", to: nil)
            ]
        )
    ]
)
