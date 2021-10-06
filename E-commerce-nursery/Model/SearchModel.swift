//
//  SearchModel.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 10/5/21.
//

import Foundation

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
