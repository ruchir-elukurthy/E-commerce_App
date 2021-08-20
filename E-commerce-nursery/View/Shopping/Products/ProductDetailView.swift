//
//  UserProfileView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/19/21.
//

import SwiftUI

struct ProductDetailView: View {
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
                    Spacer(minLength: 30)
                }
                VStack {
                    Text("Plants")
                        .padding(.trailing,100)
                    Text("Snake Plant")
                        .font(.title)
                        .fontWeight(.bold)
                }.padding(.trailing,200)
                
            }
        }.ignoresSafeArea(.all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView().previewLayout(.sizeThatFits)
    }
}
