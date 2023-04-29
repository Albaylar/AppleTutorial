//
//  MotivateApp.swift
//  Motivate
//
//  Created by Furkan Deniz Albaylar on 28.04.2023.
//

import Foundation

import SwiftUI

@main
struct MotivateApp: App {
    @StateObject private var modelData = ModelData()

       var body: some Scene {
           WindowGroup {
               ContentView()
                   .environmentObject(modelData)
           }
       }
   }
