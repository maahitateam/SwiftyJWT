// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SwiftyJWT",
    platforms: [
        .iOS(.v11), .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "SwiftyJWT",
            targets: ["SwiftyJWT"])
    ],
    dependencies: [
        .package(name:"SwiftyCrypto", url: "https://github.com/maahitateam/SwiftyCrypto", from:"2.0.0")
    ],
    targets: [
        .target(name: "SwiftyJWT",
                dependencies: ["SwiftyCrypto"],
                path: "Sources")
    ]
)
