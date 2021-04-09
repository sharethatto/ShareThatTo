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
            url: "https://github.com/sharethatto/sharethatto/raw/3772ece5f9787ebe6cec131b0f5c50781e66a1c4/Frameworks/ShareThatTo.zip",
            checksum: "855ce2c8ed87bbd5713966b2b13fad89f63d2142285eed650b8ae4a59fe42417"),
    ]
)
