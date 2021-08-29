//
//  ProductQuantity.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/29/21.
//

import SwiftUI

struct ProductQuantityView: View {
    
    var quantity: Int
    
    var body: some View {
        Text("Only \(String(quantity)) left in stock!")
            .foregroundColor(.red)
    }
}

struct ProductQuantityView_Previews: PreviewProvider {
    static var previews: some View {
        ProductQuantityView(quantity: 1).previewLayout(.sizeThatFits)
    }
}
