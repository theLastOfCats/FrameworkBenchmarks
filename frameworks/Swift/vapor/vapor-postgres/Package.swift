// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "vapor-postgres",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(name: "app", targets: ["App"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.101.4"),
        .package(url: "https://github.com/vapor/postgres-kit.git", from: "2.13.5"),
    ],
    targets: [
        .executableTarget(
            name: "App",
            dependencies: [
                .product(name: "PostgresKit", package: "postgres-kit"),
                .product(name: "Vapor", package: "vapor"),
            ],
            path: "Sources"),
    ]
)
