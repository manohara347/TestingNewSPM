// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let url = "https://github.com/manohara347/AppDynamicsAgent/releases/download/1.0.16/ADEUMInstrumentation.xcframework.zip"
let checksum = "2418cf72ee407e0ab2df676a86958354d97e22a5174a1e49a61bed13d6ef3d1f"
let package = Package(
    name: "AppDynamicsAgent",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AppDynamicsAgent",
            targets: ["AppDynamicsAgent"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
                    name: "AppDynamicsAgent",
                    url: url,
                    checksum: checksum)
    ]
)
