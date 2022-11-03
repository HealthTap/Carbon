// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "CarbonList",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "CarbonList", targets: ["CarbonList"])
    ],
    dependencies: [
        .package(url: "https://github.com/ra1028/DifferenceKit.git", .upToNextMinor(from: "1.1.3"))
    ],
    targets: [
        .target(
            name: "CarbonList",
            dependencies: ["DifferenceKit"],
            path: "Sources"
        ),
        .testTarget(
            name: "Tests",
            dependencies: ["CarbonList"],
            path: "Tests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
