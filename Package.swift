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
            from: "8.4.3"
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
            url: "https://github.com/geniee-ssp/googleads-mobile-ios-mediation-geniee/releases/download/13.4.0/GoogleMobileAdsMediationGeniee.13.4.0.0.zip",
            checksum: "4a9759722a8026c0151702dc09247ec00ae015cd5e99956434ca9e01b5ea9651"
        )
    ]
)
