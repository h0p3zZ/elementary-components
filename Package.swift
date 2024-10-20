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
        .package(url: "https://github.com/sliemeobn/elementary.git", from: "0.4.1"),
        .package(url: "https://github.com/apple/swift-syntax.git", from: "510.0.0"),
    ],
    targets: [
        .target(
            name: "ElementaryShoelace",
            dependencies: [
                .product(name: "Elementary", package: "elementary"),
                "Macros",
            ]
        ),
        .macro(
            name: "Macros",
            dependencies: [
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
                .product(name: "SwiftSyntax", package: "swift-syntax"),
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftDiagnostics", package: "swift-syntax"),
            ]
        ),
        .testTarget(
            name: "ElementaryShoelaceTests",
            dependencies: ["ElementaryShoelace"]
        ),
    ]
)
