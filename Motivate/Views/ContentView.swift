//
//  ContentView.swift
//  Motivate
//
//  Created by Furkan Deniz Albaylar on 27.04.2023.
//

import SwiftUI
import CoreData

enum Tab {
    case featured
    case list
    }

struct ContentView: View {
    @State private var selection: Tab = .featured
    var body: some View {
            TabView(selection: $selection) {
                CategoryHome()
                    .tabItem {
                        Label("Featured", systemImage: "star")
                    }
                    .tag(Tab.featured)
                LandmarkList()
                    .tabItem {
                        Label("List", systemImage: "list.bullet")
                    }
                    .tag(Tab.list)
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
    
