//
//  CartModel.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/25/21.
//

import Foundation

struct CartItems: Identifiable {
    var id: String = UUID().uuidString
    var user: String
    var name: String
    var price: String
}
