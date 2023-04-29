//
//  Gonca.swift
//  Motivate
//
//  Created by Furkan Deniz Albaylar on 28.04.2023.
//

import SwiftUI

struct ImageView: View {
    var image : Image
    var body: some View {
            image
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
        }
    }

    struct CircleImage_Previews: PreviewProvider {
        static var previews: some View {
            ImageView(image: Image("turtlerock"))
        }
    }
