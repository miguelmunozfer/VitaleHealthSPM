// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "VitaleHealthSPM",
    platforms: [
       .iOS(.v12)
    ],
    products: [
        .library(
            name: "VitaleHealthSPM",
            targets: ["VitaleHealthSDKWrapper"]),
    ],
    dependencies: [
        // Dependencias de tu SDK
        .package(url: "https://github.com/miguelmunozfer/TrainingSDKSPM", .branch("main")),
        .package(url: "https://github.com/miguelmunozfer/NutritionSDKPlugin", .branch("main"))
    ],
    targets: [
        .binaryTarget(
            name: "VitaleHealthSPM",
            path: "./VitaleHealthSDK.xcframework"
        ),
        .target(
            name: "VitaleHealthSDKWrapper",
            dependencies: [
                .product(name: "TrainingSDK", package: "TrainingSDKSPM"),
                .product(name: "NutritionIASDK", package: "NutritionSDKPlugin")
            ],
            path: "Sources/VitaleHealthSDKWrapper"
        )
    ]
)
