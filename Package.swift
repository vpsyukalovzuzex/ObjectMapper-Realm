// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmVersionStr = "10.7.2"
let objectMapperVersionStr = "3.5.3"

let package = Package(
    name: "ObjectMapper+Realm",
    platforms: [
        .iOS(.v11),
        .tvOS(.v10),
        .macOS(.v10_10),
    ],
    products: [
        .library(
            name: "ObjectMapper+Realm",
            targets: ["ObjectMapper+Realm"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/realm/realm-cocoa.git", .exact(.init(stringLiteral: realmVersionStr))),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .exact(.init(stringLiteral: objectMapperVersionStr)))
    ],
    targets: [
        .target(
            name: "ObjectMapper+Realm",
            dependencies: [
                "RealmSwift",
                "ObjectMapper"
            ],
            path: "ObjectMapper+Realm",
            exclude: [
                "ObjectMapper+RealmTest"
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
let version = Version(0, 7, 0)
