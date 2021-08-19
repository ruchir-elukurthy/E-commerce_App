//
//  ShopView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/7/21.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        ZStack {
            VStack(spacing:0) {
                NavBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                Spacer(minLength: 30)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        TabImageView()
                            .frame(width: 350, height: 230)
                            .cornerRadius(12.0)
                            .padding(.bottom)
                        }
                        GridView()
                    }
            }.background(SwiftUI.Color.white.ignoresSafeArea(.all,edges: .all))
        }.ignoresSafeArea(.all, edges: .top)
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
