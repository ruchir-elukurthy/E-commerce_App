//
//  welcomePage.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/7/21.
//

import SwiftUI

//ContentView deals with checking if the user is logged in or not and direct them towards the correct view.
struct ContentView: View {
    
    @EnvironmentObject var viewModel : RegisterViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.isSignedIn {
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



