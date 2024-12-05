// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Scanner",
	platforms: [.iOS("13.0"), .visionOS("1.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Scanner",
			targets: ["GXCoreModule_SD_ScannerWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.2.0-beta.19")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Scanner-2.2.0-beta.19.xcframework.zip",
			checksum: "d0855282f55e561d88c0d0e21c66148860ebd44d79c30586529585c0952770ee"
		)
	]
)