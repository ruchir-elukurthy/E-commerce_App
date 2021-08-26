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
    var price: String
    
    enum CodingKeys: String, CodingKey {
        case user
        case name
        case price
    }
}
