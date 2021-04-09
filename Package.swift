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
            url: "https://github.com/sharethatto/sharethatto/raw/c5ea606038dda2b0598a344a81ab56c3e42d2982/Frameworks/ShareThatTo.zip",
            checksum: "42b7ab3c6de73ddf8ba40f5a2de0ac44ad0aa5980d3da588672daa7c77b00565"),
    ]
)
