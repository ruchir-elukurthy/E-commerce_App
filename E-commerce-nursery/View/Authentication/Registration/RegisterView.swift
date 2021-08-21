//
//  RegisterView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/6/21.
//

import SwiftUI
import Firebase

struct RegisterView: View {
    
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
                .autocapitalization(.none)
            SecureField("Password", text: $password)
                .padding()
                .background(Color(UIColor.lightGray))
                .cornerRadius(100.0)
                .padding(.bottom, 20)
                .autocapitalization(.none)
            
            if register() == true {
                NavigationLink(destination: ShopView()) {
                    Text("REGISTER")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(Color.green)
                        .cornerRadius(15.0)
                }
            }
        }.padding(.bottom,80)
    }
    
    func register() -> Bool {
        var success: Bool = true
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if((error) != nil) {
                success = false
            }
        }
        return success;
    }
}


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
