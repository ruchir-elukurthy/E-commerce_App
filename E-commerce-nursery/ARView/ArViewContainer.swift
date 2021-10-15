//
//  ArViewContainer.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 10/14/21.
//


import SwiftUI
import RealityKit

//This a type of UIKit View, so a container is created to use it in a SwiftUI app.
struct ARViewContainer: UIViewRepresentable {
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeUIView(context: Context) -> some UIView {
        let arView = ARView(frame: .zero)
        
        return arView
    }
}
