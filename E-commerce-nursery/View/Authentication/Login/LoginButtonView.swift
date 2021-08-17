//
//  LoginView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/6/21.
//

import SwiftUI


struct LoginButtonView: View {
    var body: some View {
        ZStack {
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
    }
}

struct LoginButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
