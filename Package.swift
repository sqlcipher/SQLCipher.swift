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
                      url: "https://github.com/sqlcipher/SQLCipher.swift/releases/download/4.17.0/SQLCipher.xcframework.zip",
                      checksum: "dd5a650346c1ba9933d6ba179f8844e03e4a075b3dd3a892796149864cd9ae57"
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
