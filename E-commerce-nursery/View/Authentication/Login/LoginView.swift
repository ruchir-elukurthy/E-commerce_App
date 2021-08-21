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
    @State var didLogIn: Bool = true
    
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
                .autocapitalization(.none)
            SecureField("Password", text: $password)
                .padding()
                .background(Color(UIColor.lightGray))
                .cornerRadius(100.0)
                .padding(.bottom, 20)
                .autocapitalization(.none)
        
            if register(email: email,password: password) == true {
                NavigationLink(destination: ShopView()) {
                    LoginButtonView()
                }
            }
        }.padding(.bottom,80)
    }
    
    func register(email: String, password: String) -> Bool {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if result != nil {
                return
            }
            else {
                didLogIn = false
            }
        }
        return didLogIn
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
