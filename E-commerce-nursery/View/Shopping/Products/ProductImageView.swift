//
//  ProductImageView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/20/21.
//

import SwiftUI

struct ProductImageView: View {
    var body: some View {
        HStack {
            VStack {
                Text("Price")
                    .fontWeight(.bold)
                    .padding(.trailing,48)
                Text("$15.99")
                    .font(.title)
                    .fontWeight(.bold)
            }
            Image("GridLayout-Plant")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250, alignment: .center)
                .cornerRadius(20)
        }
    }
}

struct ProductImageView_Previews: PreviewProvider {
    static var previews: some View {
        ProductImageView().previewLayout(.sizeThatFits)
    }
}
