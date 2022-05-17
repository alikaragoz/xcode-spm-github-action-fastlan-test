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
        .package(url: "https://github.com/kean/Get.git", .exact("0.8.0")),
        .package(url: "https://github.com/apple/swift-log.git", .exact("1.0.0")),
        .package(url: "https://github.com/getsentry/sentry-cocoa", .exact("7.14.0")),
        .package(url: "https://github.com/amplitude/Amplitude-iOS", .exact("8.10.0")),
        .package(url: "https://github.com/WeTransfer/Mocker.git", .exact("2.5.5")),
        .package(url: "https://github.com/apollographql/apollo-ios", .exact("0.47.1")),
        .package(url: "https://github.com/Appboy/appboy-ios-sdk", .exact("4.4.2")),
    ],
    targets: [
        .target(
            name: "MyDummyLibrary",
            dependencies: [
                .product(name: "Logging", package: "swift-log"),
                .product(name: "Amplitude", package: "Amplitude-iOS"),
                .product(name: "Sentry", package: "sentry-cocoa"),
                .product(name: "Get", package: "Get"),
                .product(name: "Apollo", package: "apollo-ios"),
                .product(name: "AppboyKit", package: "appboy-ios-sdk"),
            ]
        ),
        .testTarget(
            name: "MyDummyLibraryTests",
            dependencies: [
                "MyDummyLibrary",
                .product(name: "Logging", package: "swift-log"),
                .product(name: "Amplitude", package: "Amplitude-iOS"),
                .product(name: "Sentry", package: "sentry-cocoa"),
                .product(name: "Get", package: "Get"),
                .product(name: "Mocker", package: "Mocker"),
                .product(name: "Apollo", package: "apollo-ios")
            ]
        )
    ]
)
