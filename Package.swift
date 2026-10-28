// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterBigo",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterBigo",
            targets: ["REVUPMediaMaxAdapterBigoTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/bigo-ads/BigoADS-Swift-Package.git", exact: "6.1.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterBigoTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterBigo"),
                .target(name: "REVUPMediaMaxAdapterBigoMediationAdapter"),
                .product(name: "BigoADS", package: "BigoADS-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBigo",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaMaxAdapterBigo.zip",
            checksum: "4309e870981fd94d482e1bd2dce7e4e61a44a552a918b302f8d69445e8c31bdf"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBigoMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/AppLovinMediationBigoAdsAdapter.xcframework.zip",
            checksum: "aa8d4c27155c1fe33111a43f840a5282bfc1e0dedf8930232f3aa41cc35a90f3"
        ),
    ]
)
