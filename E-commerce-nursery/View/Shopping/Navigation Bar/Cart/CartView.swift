//
//  AddToCartView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/22/21.
//

import SwiftUI
import Firebase

struct CartView: View {

    @State private var isEditing:Bool = false
    @State private var email_id: String = ""
    @ObservedObject private var cartViewModel = CartViewModel()
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(cartViewModel.cartProducts) { product in
                    if product.user == email_id {
                        HStack {
                            Image(systemName: "person.fill")
                                .data(url: URL(string: product.image_link)!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 100, alignment: .center)
                                .cornerRadius(15)
                                .padding(5)
                            VStack {
                                Text(product.name)
                                    .padding(.bottom,10)
                                Text("$"+String(product.price))
                                    .bold()
                            }
                            .padding(.trailing,40)
                            .padding(.bottom,10)
                        }
                    }
                }
            }.navigationBarTitle(Text("Your Cart"))
            BuyButtonView()
        }
        .onAppear() {
            self.cartViewModel.fetchData()
            self.getCurrentUser()
        }
    }
    
    func getCurrentUser() {
        let user = Auth.auth().currentUser
        if let user = user {
            self.email_id = user.email ?? ""
        }
    }
}

struct CartView_Previews: PreviewProvider {
    
    static var previews: some View {
        CartView().previewLayout(.sizeThatFits)
    }
}

