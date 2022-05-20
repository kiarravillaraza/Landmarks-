//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Kiarra Villaraza on 5/16/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
