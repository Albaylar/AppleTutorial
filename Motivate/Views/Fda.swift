//
//  Fda.swift
//  Motivate
//
//  Created by Furkan Deniz Albaylar on 28.04.2023.
//

import SwiftUI

struct Fda: View {
    var body: some View {
        Image("Fda")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300)
            .cornerRadius(20)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 20)
    }
}

struct Fda_Previews: PreviewProvider {
    static var previews: some View {
        Fda()
    }
}
