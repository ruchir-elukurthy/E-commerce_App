//
//  ProductDescriptionView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/20/21.
//

import SwiftUI

struct ProductDescriptionView: View {
    
    var description: String
    
    var body: some View {
        Text(description)
            .opacity(0.9)
            .font(.system(.body, design: .rounded))
            .fixedSize(horizontal: false, vertical: true)
    }
}

struct ProductDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDescriptionView(description: "hello").previewLayout(.sizeThatFits)
    }
}
