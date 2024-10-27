//
//  ContentView.swift
//  Landmarks
//
//  Created by ANIKET CHOUDHARY on 25/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}
