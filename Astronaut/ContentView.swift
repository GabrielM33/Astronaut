//
//  ContentView.swift
//  Astronaut
//
//  Created by Gabriel Moraes on 18/02/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @Environment(\.openWindow) private var openWindow
    
    var body: some View {
        ZStack {
            // Astronaut
            Image("Astronaut")
                .resizable()
                .scaledToFill()
                
            // Button
            Button("Explore More") {
                openWindow(id: "Volume")
            }
            .controlSize(.extraLarge)
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
