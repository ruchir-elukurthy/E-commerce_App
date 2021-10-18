//
//  SellingProductModel.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/19/21.
//

import Foundation

//
struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Float
}
