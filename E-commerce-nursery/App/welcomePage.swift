//
//  welcomePage.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/7/21.
//

import SwiftUI

struct welcomePage: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("welcome")
                    .resizable()
                    .scaledToFill()
                VStack (spacing: 0) {
                    Text("Support local nurseries")
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.trailing,70)
                        .padding(.bottom,30)
                    Text("Find affordable and quality plants today")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(.trailing,75)
                }.padding(.bottom,300)
                .padding(.trailing,95)
                VStack (spacing: 30) {
                    NavigationLink(destination: RegisterView()) {
                    Text("REGISTER")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(Color.green)
                        .cornerRadius(15.0)
                    }
                    NavigationLink(destination: LoginView()) {
                    Text("LOGIN")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(Color.green)
                        .cornerRadius(15.0)
                    }
                }
                .padding(.top,400)
                .padding(.trailing,160)
                
            }.ignoresSafeArea(.all)
        }
    }
}

struct welcomePage_Previews: PreviewProvider {
    static var previews: some View {
        welcomePage()
    }
}
