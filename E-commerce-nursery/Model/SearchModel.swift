//
//  SearchModel.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 10/5/21.
//

import Foundation


//This is the model to search information for any item in uploads.
struct searchData: Identifiable, Codable {
    var id: String
    var name: String
    var category: String
    var price: Float
    var quantity: Int
    var description: String
    var image_link: String
    var organization_name: String
}
