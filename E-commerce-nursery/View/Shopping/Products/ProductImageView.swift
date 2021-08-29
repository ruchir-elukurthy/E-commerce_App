//
//  ProductImageView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/20/21.
//

import SwiftUI



struct ProductImageView: View {
    
    var imageURL: String
    var price: Float
    
    var body: some View {
        HStack {
            VStack {
                Text("Price")
                    .fontWeight(.bold)
                    .padding(.trailing,48)
                Text(String(price))
                    .font(.title)
                    .fontWeight(.bold)
            }
            Image(systemName: "person.fill")
                .data(url: URL(string: imageURL)!)
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250, alignment: .center)
                .cornerRadius(20)
        }
    }
}

struct ProductImageView_Previews: PreviewProvider {
    static var previews: some View {
        ProductImageView(imageURL: "https://firebasestorage.googleapis.com/v0/b/ecommercenursery.appspot.com/o/images%2F52DF2D6A-8505-43D2-9B6C-36A8CDEB4B8B.png?alt=media&token=69c9c305-b049-4f6d-8c96-f8db820d5ca4", price: 0.0).previewLayout(.sizeThatFits)
    }
}
