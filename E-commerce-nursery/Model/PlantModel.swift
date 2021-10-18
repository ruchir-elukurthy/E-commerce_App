//
//  PlantModel.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/29/21.
//

import Foundation

//This is the model for images fetched from garden images json file.
struct Plant: Codable, Identifiable {
    let id: Int
    let image: String
}
