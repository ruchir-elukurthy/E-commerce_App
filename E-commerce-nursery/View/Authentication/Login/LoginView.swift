//
//  LoginView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/6/21.
//

import SwiftUI
import Firebase

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
    VStack {
        Text("Welcome!")
           .font(.largeTitle)
           .fontWeight(.semibold)
        Image("registerScreen")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 300)
            .clipShape(Circle())
            .cornerRadius(150)
            TextField("Email", text: $email)
                .padding()
                .background(Color(UIColor.lightGray))
                .cornerRadius(100.0)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .background(Color(UIColor.lightGray))
                .cornerRadius(100.0)
                .padding(.bottom, 20)
        
            if register() == true {
                NavigationLink(destination: ShopView()) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(Color.green)
                        .cornerRadius(15.0)
                }
            }
        }.edgesIgnoringSafeArea(.all)
    }
    
    func register() -> Bool {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in guard result != nil, error == nil else {
                return
            }
        }
        return true
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
