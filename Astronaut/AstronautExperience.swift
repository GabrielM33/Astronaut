//
//  AstronautExperience.swift
//  Astronaut
//
//  Created by Gabriel Moraes on 18/02/24.
//

import SwiftUI
import RealityKit

struct AstronautExperience: View {
    var body: some View {
        RealityView { content in
            // Load astronau model (entity)
            if let astronautEntity = try? await Entity(named: "Astronaut") {
              
            //Change starting position
            astronautEntity.transform.translation = [0, -0.4, 0.3]
            
            //Start animantion
                if let animation = astronautEntity.availableAnimations.first {
                    astronautEntity.playAnimation(animation)
                }
                
            // Add entity to RealityView
            content.add(astronautEntity)
            }
        }
    }
}

#Preview {
    AstronautExperience()
}
