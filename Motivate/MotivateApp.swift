//
//  MotivateApp.swift
//  Motivate
//
//  Created by Furkan Deniz Albaylar on 27.04.2023.
//

import SwiftUI

@main
struct MotivateApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
