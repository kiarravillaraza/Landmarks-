//
//  CircleImage.swift
//  Landmarks
//
//  Created by Kiarra Villaraza on 5/17/22.
//

import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
            
            image
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 2.75)
            }
            .shadow(radius: 5)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
