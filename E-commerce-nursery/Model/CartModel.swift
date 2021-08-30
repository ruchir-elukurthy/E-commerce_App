//
//  CartModel.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/25/21.
//

import Foundation
import FirebaseFirestoreSwift

struct CartItems: Identifiable, Codable {
    @DocumentID var id: String? = UUID().uuidString
    var user: String
    var name: String
    var category: String
    var price: Float
    var quantity: Int
    var description: String
    var image_link: String
    var organization_name: String
    
    enum CodingKeys: String, CodingKey {
        case user
        case name
        case category
        case price
        case quantity
        case description
        case image_link
        case organization_name
    }
}
