//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Kiarra Villaraza on 5/19/22.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        
        modelData.landmarks.filter {
            
            landmark in
                
            (!showFavoritesOnly || landmark.isFavorite)
            
        }
        
    }
    
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                Toggle(isOn: $showFavoritesOnly) {
                    
                    Text("Favorites only")
                    
                }
                
                ForEach(filteredLandmarks) { landmark in
                
                NavigationLink {
                  
                    LandmarkDetail(landmark: landmark)
               
                } label: {
                    
                LandmarkRow(landmark: landmark)
               
                }
            }
        }
            
            .navigationTitle("Landmarks")

        }
        .offset(y: -70)
        .padding(.bottom, -130)
    }
    
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {

        LandmarkList()
    
    }
}

