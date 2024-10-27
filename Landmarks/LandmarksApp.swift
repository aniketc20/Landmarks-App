//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by ANIKET CHOUDHARY on 25/10/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
