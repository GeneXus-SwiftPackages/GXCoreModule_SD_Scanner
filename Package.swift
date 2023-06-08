// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Scanner",
	platforms: [.iOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Scanner",
			targets: ["GXCoreModule_SD_ScannerWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", 108a71075c951998bdaa4037da97c513d0de271c),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", d60601ead23ef16bd8e55ba8bcf14734fe357b5e),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", c7f5e1d8ea6bd7e5a780f307eae7a43e471cbfd0),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", 74dde0711a4fa381198959e514e0bb2c76016d09),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", a1e27a7a0817831e5e96518e9434564ef4a7bc97)
	],
	targets: [
		.target(name: "GXCoreModule_SD_ScannerWrapper",
				dependencies: [
					"GXCoreModule_SD_Scanner",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.iOS])),
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS])),
					.product(name: "GXDataLayer", package: "GXDataLayer", condition: .when(platforms: [.iOS])),
					.product(name: "GXFoundation", package: "GXFoundation", condition: .when(platforms: [.iOS])),
					.product(name: "GXObjectsModel", package: "GXObjectsModel", condition: .when(platforms: [.iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Scanner",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Scanner-1.0.0-beta+20230608211628.xcframework.zip",
			checksum: "bd49764816ed80c8f606b9428e4158bd275fb458843e9f9667236e5c372c73c6"
		)
	]
)