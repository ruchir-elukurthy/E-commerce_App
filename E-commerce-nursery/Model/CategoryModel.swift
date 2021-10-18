//
//  CategoryModel.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/29/21.
//

import Foundation

//This model is for horizontal grid for categories for items for users.
struct Category: Codable, Identifiable {
    let id: Int
    let name: String
}
