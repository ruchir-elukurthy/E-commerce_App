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
        List(cartViewModel.cartProducts) { product in
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

//        VStack {
//        VStack(alignment: .center, spacing: 0) {
//            ZStack {
//                // Header - "Your Cart"
//                VStack(alignment: .center, spacing: 4) {
//                    Text("Your Cart")
//                        .font(Font.system(size: 16, weight: .bold, design: .rounded))
//                    Text("Item")
//                        .font(Font.system(size: 13, weight: .semibold, design: .rounded))
//                        .foregroundColor(Color.gray)
//                }
//                HStack {
//                    Spacer()
//                    Button(action: {
//                        withAnimation {
//                            self.isEditing = !self.isEditing
//                        }
//
//                    }) {
//                        if self.isEditing {
//                            Text("Done")
//                            .font(Font.system(size: 16, weight: .bold, design: .rounded))
//                            .padding(.trailing, 20)
//                        } else {
//                            Image(systemName: "ellipsis")
//                            .padding(.trailing, 20)
//                        }
//
//                    }.foregroundColor(Color(red: 105/255, green: 105/255, blue: 200/255))
//                }
//
//            }
//
//        }
//        .padding(.bottom, 10)
//
//        ScrollView(.vertical, showsIndicators: true) {
//            // Items in Cart
//
//            ForEach(items, id: \.uuid) { item in
//                HStack {
//                    ProductCartRow(item: item)
//                        .padding(.horizontal, 20)
//                        .padding(.vertical, 8)
//
//                    if self.isEditing {
//                        Button(action: {
//                            self.items.removeAll { (prod) -> Bool in
//                                prod.uuid == item.uuid
//                            }
//                        }) {
//                            Image(systemName: "trash.fill")
//                            .padding(.trailing, 20)
//                        }.foregroundColor(Color.red)
//                    }
//                }
//            }
//        }
//        ScrollView(.vertical, showsIndicators: true) {
//        HStack(alignment: .center, spacing: 12) {
//
//                            // Shipping Rect
//                            VStack(alignment: .center, spacing: 4) {
//                                Image(systemName: "airplane")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 20, height: 20, alignment: .center)
//                                    .foregroundColor(.black)
//                                Text("FREE")
//                                    .font(Font.system(size: 14, weight: .semibold, design: .rounded))
//                            }
//                            .frame(width: 60, height: 60, alignment: .center)
//                            .background(Color(red: 124/255, green: 234/255, blue: 156/255))
//                            .cornerRadius(10)
//
//                            // Total Text
//                            VStack(alignment: .leading, spacing: 0) {
//                                Text("Total:")
//                                    .foregroundColor(Color.gray)
//                                    .font(Font.system(size: 14, weight: .semibold, design: .default))
//                                Text("$Total")
//                                    .font(Font.system(size: 20, weight: .heavy, design: .rounded))
//                            }
//                            Spacer()
//                        }
//                        .padding(.horizontal, 20)
//                        .padding(.vertical, 8)
//
//        GeometryReader { geometry in
//            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                Text("Checkout")
//            })
//                       //if self.items.count == 0 {
//                           HStack(alignment: .center, spacing: 12) {
//                               Text("Cart Empty")
//                               Image(systemName: "xmark")
//                          // }
//                           .frame(width: geometry.size.width - 40, height: 60, alignment: .center)
//                           .foregroundColor(Color.white)
//                           .font(Font.system(size: 17, weight: .semibold, design: .rounded))
//                           .background(Color.gray)
//                           .cornerRadius(10)
//                       //} else {
//                           HStack(alignment: .center, spacing: 12) {
//                               Text("Confirm Transaction")
//                               Image(systemName: "arrow.right")
//                           }
//                           .frame(width: geometry.size.width - 40, height: 60, alignment: .center)
//                           .foregroundColor(Color.white)
//                           .font(Font.system(size: 17, weight: .semibold, design: .rounded))
//                           .background(Color(red: 111/255, green: 115/255, blue: 210/255))
//                           .cornerRadius(10)
//                       }
//
//                   }
//               }
//               .fixedSize(horizontal: false, vertical: true)
//               .padding(.top, 20)
//               .padding(.bottom, 100) // Add Space at bottom of Scroll View
//           }
    
