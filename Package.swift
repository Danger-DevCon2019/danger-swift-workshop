// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "danger-swift-workshop",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "danger-swift-workshop",
            targets: ["danger-swift-workshop"]),
    ],
    dependencies: [
         .package(url:"https://github.com/danger/danger-swift.git", from: "2.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "danger-swift-workshop",
            dependencies: ["Danger"]),
        .testTarget(
            name: "danger-swift-workshopTests",
            dependencies: ["danger-swift-workshop"]),
    ]
)
