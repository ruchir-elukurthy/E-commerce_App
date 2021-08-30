//
//  CartAdditionButton.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/20/21.
//

import SwiftUI
import FirebaseAuth

struct CartAdditionButton: View {
    
    var product: UploadProduct
    @State var email_id: String = ""
    @StateObject var viewModel = AddtoCartViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "minus.circle")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .accentColor(.black)
                })
                
                Text("0")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 40, height: 40, alignment: .center)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "plus.circle")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .accentColor(.black)
                })
            }.padding(.trailing,170)
            
            Button(action: {
                viewModel.Cartproduct.user = email_id
                viewModel.Cartproduct.category = product.category
                viewModel.Cartproduct.description = product.description
                viewModel.Cartproduct.image_link = product.image_link
                viewModel.Cartproduct.name = product.name
                viewModel.Cartproduct.organization_name = product.organization_name
                viewModel.Cartproduct.quantity = product.quantity
                viewModel.Cartproduct.price = product.price
                SaveAndDismiss()
            }, label: {
                Text("ADD TO CART")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 340, height: 60)
                    .background(Color.red.opacity(0.85))
                    .cornerRadius(35.0)
            })
        }
        .onAppear() {
            self.getCurrentUser()
        }
    }
    
    func SaveAndDismiss() {
        viewModel.save()
    }
    
    func getCurrentUser() {
        let user = Auth.auth().currentUser
        if let user = user {
            self.email_id = user.email ?? ""
        }
    }
}

struct CartAdditionButton_Previews: PreviewProvider {
    static var previews: some View {
        CartAdditionButton(product: UploadProduct(id: "", name: "Snake Plant", category: "Plant", price: 0.0, quantity: 0, description: "hello", image_link: "https://firebasestorage.googleapis.com/v0/b/ecommercenursery.appspot.com/o/images%2F52DF2D6A-8505-43D2-9B6C-36A8CDEB4B8B.png?alt=media&token=69c9c305-b049-4f6d-8c96-f8db820d5ca4", organization_name: "")).previewLayout(.sizeThatFits)
    }
}

