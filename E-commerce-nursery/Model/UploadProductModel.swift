//
//  UploadProduct.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/27/21.
//

import Foundation
import FirebaseFirestoreSwift

//This is the model for people to post items to a listing.
struct UploadProduct: Identifiable, Codable {
    @DocumentID var id: String? = UUID().uuidString
    var name: String
    var category: String
    var price: Float
    var quantity: Int
    var description: String
    var image_link: String
    var organization_name: String
    
    
    //Can have different variable names in model.
    //We can assign any variable to a field in the firestore, so coding keys used here to tell model knows which key to look for.
    enum CodingKeys: String, CodingKey {
        case name
        case category
        case price
        case quantity
        case description
        case image_link
        case organization_name
    }
}

