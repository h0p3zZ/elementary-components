// swift-tools-version: 5.10
import CompilerPluginSupport
import PackageDescription

let package = Package(
    name: "elementary-components",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6), .macCatalyst(.v13)],
    products: [
        .library(
            name: "ElementaryShoelace",
            targets: ["ElementaryShoelace"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/sliemeobn/elementary.git", from: "0.5.5"),
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
