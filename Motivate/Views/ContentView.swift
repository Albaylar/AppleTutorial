//
//  ContentView.swift
//  Motivate
//
//  Created by Furkan Deniz Albaylar on 27.04.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        
            LandmarkList()
        
        }
        
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
    
