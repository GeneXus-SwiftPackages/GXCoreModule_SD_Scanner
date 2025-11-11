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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.1.0-beta.6")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Scanner-4.1.0-beta.6.xcframework.zip",
			checksum: "975be0ba0e0debc43ee35859581b1865fc171ce3c681ea9765e5b1fd5787d215"
		)
	]
)