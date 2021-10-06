//
//  SearchDetailView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 10/5/21.
//

import SwiftUI
import Firebase

struct SearchDetailView: View {
    
    var data: searchData
    @State var email_id: String = ""
    @StateObject var viewModel = AddtoCartViewModel()
    
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
                    Text(data.name)
                        .font(.title)
                        .fontWeight(.bold)
                }.padding(.trailing)
                
                ProductImageView(imageURL: data.image_link, price: data.price)
                ProductQuantityView(quantity: data.quantity)
                    .padding(.trailing,200)
                    .padding(.bottom,10)
                ProductDescriptionView(description: data.description)
                    .padding(.leading,10)
                    .padding(.trailing,10)
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
                    viewModel.Cartproduct.category = data.category
                    viewModel.Cartproduct.description = data.description
                    viewModel.Cartproduct.image_link = data.image_link
                    viewModel.Cartproduct.name = data.name
                    viewModel.Cartproduct.organization_name = data.organization_name
                    viewModel.Cartproduct.quantity = data.quantity
                    viewModel.Cartproduct.price = data.price
                    SaveAndDismiss()
                }, label: {
                    Text("ADD TO CART")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.bottom, 10)
                        .frame(width: 340, height: 60)
                        .background(Color.red.opacity(0.85))
                        .cornerRadius(35.0)
                })
            }
            .background(Color.gray.opacity(0.1))
            .ignoresSafeArea(.all)
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

struct SearchDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        ProductInformationView(product: UploadProduct(id: "", name: "Snake Plant", category: "Plant", price: 0.0, quantity: 0, description: "hello", image_link: "https://firebasestorage.googleapis.com/v0/b/ecommercenursery.appspot.com/o/images%2F52DF2D6A-8505-43D2-9B6C-36A8CDEB4B8B.png?alt=media&token=69c9c305-b049-4f6d-8c96-f8db820d5ca4", organization_name: ""))
    }
}

