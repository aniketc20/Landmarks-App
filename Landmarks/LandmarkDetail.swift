//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by ANIKET CHOUDHARY on 26/10/24.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {
            $0.id == landmark.id
        })!
    }
    var body: some View {
        @Bindable var modelData = modelData
        ScrollView {
            MapView(coordinate:landmark.locationCoordinate).frame(height: 300)

            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom, -140)

            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park+",")
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)").font(.title2)
                    .foregroundStyle(.link)
                Text(landmark.description)

            }
            .padding(.all, 20)
        }
        .navigationTitle(landmark.name)
        Spacer()
    }
}

#Preview {
    let modelData = ModelData()
        return LandmarkDetail(landmark: modelData.landmarks[0])
            .environment(modelData)
}
