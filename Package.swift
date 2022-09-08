// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "SocketIO",
    products: [
        .library(name: "SocketIO", targets: ["SocketIO"])
    ],
    dependencies: [
        .package(url: "https://github.com/haidangbayern/Starscream", .upToNextMinor(from: "3.1.0")),
    ],
    targets: [
        .target(name: "SocketIO", dependencies: ["StarscreamIII"]),
        .testTarget(name: "TestSocketIO", dependencies: ["SocketIO"]),
    ]
)
