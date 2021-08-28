//
//  UploadProduct.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/27/21.
//

import Foundation
import FirebaseFirestoreSwift

struct UploadProduct: Identifiable, Codable {
    @DocumentID var id: String? = UUID().uuidString
    var name: String
    var category: String
    var price: Float
    var quantity: Int
    var description: String
    //var image_link: String
    var organization_name: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case category
        case price
        case quantity
        case description
        case organization_name
    }
}

