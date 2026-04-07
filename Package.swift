// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterBigo",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterBigo",
            targets: ["REVUPMediaMaxAdapterBigoTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterBigoTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterBigo"),
                .target(name: "REVUPMediaMaxAdapterBigoMediationAdapter"),
                .target(name: "BigoADS"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBigo",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaMaxAdapterBigo.zip",
            checksum: "471ee279a1bfd7e60d08953e99e3b69568c47ceb2f07ea1547dc901a7e5d29a9"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBigoMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/AppLovinMediationBigoAdsAdapter.xcframework.zip",
            checksum: "9e22b7b377544f2d91f3b4e63e631d019dd14122359407bc226369e26ee2eefb"
        ),
        .binaryTarget(
            name: "BigoADS",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/BigoADS.xcframework.zip",
            checksum: "dddec8f8962493f089e9d040a23fb88299c60f662bb9e422a66eff88edd5837d"
        ),
    ]
)
