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
			PieChart([
				(.red, 50),
				(.blue, 50),
				(.purple, 50)
			])
			.padding()
        }
    }
}
