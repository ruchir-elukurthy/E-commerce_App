//
//  ShopView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/7/21.
//

import SwiftUI


//Thi is the hompage for the shop view.
struct ShopView: View {
    
    @ObservedObject var loadViewModel = FetchProductsViewModel()
    @ObservedObject var searchViewModel = SearchViewModel()
    
    //All the sub views are written in the order of how they appear in the view from top to bottom
    var body: some View {
        VStack() {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    NavBarView()                    //top pane of an app (app name, cart and sign out)
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    Spacer(minLength: 30)
                    SearchBarView(resultant_search_data: self.$searchViewModel.searchInfo)  // normal search bar to search info
                        .padding(.bottom)
                    TabImageView()                      //just to see catalog images
                        .frame(width: 350, height: 230)
                        .cornerRadius(12.0)
                        .padding(.bottom)
                    GridView()                          //what all are there in the listing.
                        .padding(.bottom)
                    HStack {
                        Text("Listing")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.trailing, 230)
                    }
                    
                    ProductLoadView()               //products in the listing.
                }
            }
            Spacer()
            TabBarView()                            //bottom bar to view different features of app.
                .padding()
        }
        .background(Color.gray.opacity(0.1))
        .ignoresSafeArea(.all)
        .navigationBarHidden(true)
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
