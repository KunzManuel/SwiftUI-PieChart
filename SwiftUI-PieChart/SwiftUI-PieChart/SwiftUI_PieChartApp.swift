//
//  SwiftUI_PieChartApp.swift
//  SwiftUI-PieChart
//
//  Created by Manuel Kunz on 26.03.21.
//

import SwiftUI

@main
struct SwiftUI_PieChartApp: App {
    var body: some Scene {
        WindowGroup {
			ZStack {

				HStack {
					PieChart([
						(hexStringToUIColor(hex: "#D90B1C"), 8),
						(hexStringToUIColor(hex: "#FAF566"), 20),
						(hexStringToUIColor(hex: "#9ACFDD"), 30),
						(hexStringToUIColor(hex: "#CABAAB"), 9),
						(hexStringToUIColor(hex: "#202731"), 11)
					])
					VStack {
						PieChart([
							(hexStringToUIColor(hex: "#6D8C81"), 1),
							(hexStringToUIColor(hex: "#F2E0D0"), 1),
							(hexStringToUIColor(hex: "#F2AD94"), 1),
							(hexStringToUIColor(hex: "#D96459"), 1),
							(hexStringToUIColor(hex: "#8C4949"), 1)
						])
						PieChart([
							(hexStringToUIColor(hex: "#F556FC"), 1),
							(hexStringToUIColor(hex: "#DCA219"), 2),
							(hexStringToUIColor(hex: "#DEDB1D"), 3),
							(hexStringToUIColor(hex: "#5DFED4"), 4),
							(hexStringToUIColor(hex: "#221CFD	"), 5)
						])
					}
					VStack {
						HStack {
							PieChart([
								(hexStringToUIColor(hex: "#B64FC1"), 1),
								(hexStringToUIColor(hex: "#0468BF"), 1),
								(hexStringToUIColor(hex: "#05AFF2"), 1),
								(hexStringToUIColor(hex: "#F2CE1B"), 1),
								(hexStringToUIColor(hex: "#D9A404"), 1)
							])
							PieChart([
								(hexStringToUIColor(hex: "#C6001A"), 5),
								(hexStringToUIColor(hex: "#490973"), 4),
								(hexStringToUIColor(hex: "#5CEFF4"), 3),
								(hexStringToUIColor(hex: "#2244DB"), 3),
								(hexStringToUIColor(hex: "#FF00F3"), 2)
							])
						}
						HStack {
							PieChart([
								(hexStringToUIColor(hex: "#181B30"), 2),
								(hexStringToUIColor(hex: "#62DCBC"), 7),
								(hexStringToUIColor(hex: "#FEF3D5"), 15),
								(hexStringToUIColor(hex: "#FC5340"), 5),
								(hexStringToUIColor(hex: "#F8BC16"), 8)
							])
							PieChart([
								(hexStringToUIColor(hex: "#F3FEB0"), 1),
								(hexStringToUIColor(hex: "#FEA443"), 2),
								(hexStringToUIColor(hex: "#705E78"), 3),
								(hexStringToUIColor(hex: "#A5AAA3"), 4),
								(hexStringToUIColor(hex: "#812F33"), 5)
							])
						}
						
					}
				}
				.padding()
				
			}
        }
    }
	func hexStringToUIColor (hex:String) -> Color {
		var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

		if (cString.hasPrefix("#")) {
			cString.remove(at: cString.startIndex)
		}

		if ((cString.count) != 6) {
			return .gray
		}

		var rgbValue:UInt64 = 0
		Scanner(string: cString).scanHexInt64(&rgbValue)

		let uicolor = UIColor(
			red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
			green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
			blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
			alpha: CGFloat(1.0)
		)
		return Color(uicolor)
	}
	func hexStringToUIColorAlpha (hex:String) -> Color {
		var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

		if (cString.hasPrefix("#")) {
			cString.remove(at: cString.startIndex)
		}

		if ((cString.count) != 6) {
			return .gray
		}

		var rgbValue:UInt64 = 0
		Scanner(string: cString).scanHexInt64(&rgbValue)

		let uicolor = UIColor(
			red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
			green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
			blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
			alpha: CGFloat(0.3)
		)
		return Color(uicolor)
	}
}
