//
//  Garden.swift
//  SecretGardenTest
//
//  Created by Carmen on 07.11.21.
//

import RealityKit
import SwiftUI

struct GardenView : View {
    var body: some View {
//        return ARViewContainer().edgesIgnoringSafeArea(.all)
        Text("TODO")
    }
}


struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
