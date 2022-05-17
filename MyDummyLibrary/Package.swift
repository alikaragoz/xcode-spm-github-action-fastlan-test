// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyDummyLibrary",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "MyDummyLibrary",
            targets: ["MyDummyLibrary"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/kean/Get.git", from: "0.8.0"),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
        .package(url: "https://github.com/getsentry/sentry-cocoa", from: "7.14.0"),
        .package(url: "https://github.com/amplitude/Amplitude-iOS", from: "8.10.0")
    ],
    targets: [
        .target(
            name: "MyDummyLibrary",
            dependencies: [
                .product(name: "Logging", package: "swift-log"),
                .product(name: "Amplitude", package: "Amplitude-iOS"),
                .product(name: "Sentry", package: "sentry-cocoa"),
                .product(name: "Get", package: "Get")
            ]
        ),
        .testTarget(
            name: "MyDummyLibraryTests",
            dependencies: ["MyDummyLibrary"]
        )
    ]
)
