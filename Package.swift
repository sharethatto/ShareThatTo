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
            url: "https://github.com/sharethatto/sharethatto/raw/9bc7f55bda5f8843b700f4202505f16307314f4c/Frameworks/ShareThatTo.zip",
            checksum: "f565c826afcac57193d9f4c3d4a5de88ef748c01fb7961039007851f0e2beba1")
    ]
)
