// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Scanner",
	platforms: [.iOS("15.0"), .visionOS("2.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Scanner",
			targets: ["GXCoreModule_SD_ScannerWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.2.0-beta.23")
	],
	targets: [
		.target(name: "GXCoreModule_SD_ScannerWrapper",
				dependencies: [
					"GXCoreModule_SD_Scanner",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .visionOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Scanner",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Scanner-3.2.0-beta.23.xcframework.zip",
			checksum: "13a1a627c59fc37fa3fad086588b59f2065d83ccf928b327fb83ff9a91879ae2"
		)
	]
)