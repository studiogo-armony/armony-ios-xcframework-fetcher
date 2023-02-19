// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XCFrameworksFetcher",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "XCFrameworksFetcher",
            targets: ["XCFrameworksFetcher", "Alamofire"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "XCFrameworksFetcher",
            dependencies: []),
        .testTarget(
            name: "XCFrameworksFetcherTests",
            dependencies: ["XCFrameworksFetcher"]),
        // Alamofire-5.6.4
        .binaryTarget(name: "Alamofire",
                      url: "https://github.com/studiogo-armony/armony-ios-third-party-frameworks/releases/download/1.0.0/Alamofire.xcframework.zip",
                      checksum: "c5f8b911d7482d074b2a0c8eb2c249ebcbcd95ffd7ca62e945223d7b851f016d")
    ]
)
