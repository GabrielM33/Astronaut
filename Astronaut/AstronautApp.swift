//
//  AstronautApp.swift
//  Astronaut
//
//  Created by Gabriel Moraes on 18/02/24.
//

import SwiftUI

@main
struct AstronautApp: App {
    
    var body: some Scene {
        
        //Window
        WindowGroup (id: "Window") {
            ContentView()
        }
        
        //Volume
        WindowGroup (id: "Volume") {
            AstronautExperience()
        }
        .windowStyle(.volumetric)
    }
}
