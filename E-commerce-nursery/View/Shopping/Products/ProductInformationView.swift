//
//  ProductInfomrationView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/29/21.
//

import SwiftUI

struct ProductInformationView: View {
    
    var product: UploadProduct
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    NavBarProductView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                }
                VStack {
                    Text(product.name)
                        .font(.title)
                        .fontWeight(.bold)
                }.padding(.trailing)
                
                ProductImageView(imageURL: product.image_link, price: product.price)
//                ProductQuantityView(quantity: product.quantity)
//                    .padding(.trailing,200)
//                    .padding(.bottom,10)
                ProductDescriptionView(description: product.description)
                    .padding(.leading,10)
                    .padding(.trailing,10)
            }
            CartAdditionButton(product: product)
                .padding(.bottom,18)
        }
        .background(Color.gray.opacity(0.1))
        .ignoresSafeArea(.all)
    }
}

struct ProductInformationView_Previews: PreviewProvider {
    
    static var previews: some View {
        ProductInformationView(product: UploadProduct(id: "", name: "Snake Plant", category: "Plant", price: 0.0, quantity: 0, description: "hello", image_link: "https://firebasestorage.googleapis.com/v0/b/ecommercenursery.appspot.com/o/images%2F52DF2D6A-8505-43D2-9B6C-36A8CDEB4B8B.png?alt=media&token=69c9c305-b049-4f6d-8c96-f8db820d5ca4", organization_name: ""))
    }
}
