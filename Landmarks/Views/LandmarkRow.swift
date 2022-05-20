//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Kiarra Villaraza on 5/19/22.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
  // creates a horizontal stack of data
        HStack{
  // image of landmark
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
  // name of landmark
            Text(landmark.name)
            
            Spacer()

        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
    }
}
