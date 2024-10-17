// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "elementary-components",
    platforms: [
        .macOS(.v14),
        .iOS(.v17),
        .tvOS(.v17),
        .watchOS(.v10),
    ],
    products: [
        .library(
            name: "ElementaryShoelace",
            targets: ["ElementaryShoelace"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/sliemeobn/elementary.git", from: "0.4.1"),
    ],
    targets: [
        .target(
            name: "ElementaryShoelace",
            dependencies: [
                .product(name: "Elementary", package: "elementary"),
            ]
        ),
        .testTarget(
            name: "ElementaryShoelaceTests",
            dependencies: ["ElementaryShoelace"]
        ),
    ]
)
