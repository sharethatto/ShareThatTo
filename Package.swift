// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShareThatTo",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "ShareThatTo",
            targets: ["ShareThatTo", "ShareThatToAssets"]),
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ShareThatToAssets",
            dependencies: [
            ],
            path: "Sources/ShareThatToAssets", resources: [
                .copy("Assets")
            ]),

        .binaryTarget(
            name: "ShareThatTo",
            url: "https://github.com/sharethatto/sharethatto/raw/main/ShareThatTo.zip",
            checksum: "1f2e09eb42d82afcef02aea31864a39511192f433c2ceb1ded6e9bcf8d1e92e6"),
    ]
)
