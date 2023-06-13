// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Solomon",
    products: [
        .executable(
            name: "Solomon",
            targets: ["Solomon"]),
    ],
    dependencies: [
        // Add your project dependencies here,
    ],
    targets: [
        .target(
            name: "Solomon",
            dependencies: []),
        .testTarget(
            name: "SolomonTests",
            dependencies: ["Solomon"],
            path: "SolomonTests"),
    ]
)
