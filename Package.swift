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
            url: "https://github.com/sharethatto/sharethatto/raw/7f3a36eeb227eff13b5fb28bd5faa0fb9890fb02/Frameworks/ShareThatTo.zip",
            checksum: "0ffd29fbadc2e864a24236f109bbe76d3306604c44d79181af2f9a57fdf9687e"),
    ]
)
