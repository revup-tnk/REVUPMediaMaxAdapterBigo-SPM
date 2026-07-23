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
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterBigoTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterBigo"),
                .target(name: "REVUPMediaMaxAdapterBigoMediationAdapter"),
                .target(name: "BigoADS"),
            ],
            path: "Sources",
            linkerSettings: [
                .linkedLibrary("c++"),
            ],
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBigo",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterBigo.zip",
            checksum: "7c54b1e0b4c6cc404f00f7e164f437d52059141787009d38da8deed5bb262088"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBigoMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationBigoAdsAdapter.xcframework.zip",
            checksum: "ed640fae4c7b04da121651e44b06081fdf58c821972b9af6e35d49ba9dc4f622"
        ),
        .binaryTarget(
            name: "BigoADS",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/BigoADS.xcframework.zip",
            checksum: "9f8da4ea976fa459388b5b5c2c81e2709de35c146ab963886e19e0bd8c3a11bc"
        ),
    ]
)
