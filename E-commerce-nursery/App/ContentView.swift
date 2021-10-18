//
//  welcomePage.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/7/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel : RegisterViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.isSignedIn {       //Redirecting view to the correct view based on log in.
                    ShopView()
                }
                else {
                    LoginView()
                }
            }
        }.ignoresSafeArea(.all)
        .accentColor( .black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
