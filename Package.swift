// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GoogleMobileAdsMediationGeniee",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GoogleMobileAdsMediationGeniee",
            targets: ["GoogleMobileAdsMediationGenieeTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/geniee-ssp/swift-package-manager-geniee-ios-sdk.git",
            from: "8.5.1"
        ),
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "13.4.0"
        )
    ],
    targets: [
        .target(
            name: "GoogleMobileAdsMediationGenieeTarget",
            dependencies: [
                "GoogleMobileAdsMediationGeniee",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "Sources/GoogleMobileAdsMediationGenieeTarget"
        ),
        .binaryTarget(
            name: "GoogleMobileAdsMediationGeniee",
            url: "https://github.com/geniee-ssp/googleads-mobile-ios-mediation-geniee/releases/download/13.4.1/GoogleMobileAdsMediationGeniee.13.4.0.1.zip",
            checksum: "0208ee6ddcefcb310c92203a71231f3f6c06614b904638ed780c9adbf7794ff0"
        )
    ]
)
