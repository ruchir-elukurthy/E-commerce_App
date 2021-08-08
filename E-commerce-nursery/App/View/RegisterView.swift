//
//  RegisterView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/6/21.
//

import SwiftUI
import Firebase

struct RegisterView: View {
    
    @State var registerSuccess: Bool = false
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        //NavigationView {
                VStack {
                    Text("Welcome!")
                       .font(.largeTitle)
                       .fontWeight(.semibold)
                       .padding(.bottom, 10)
                    Image("registerScreen")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 300)
                        .clipShape(Circle())
                        .cornerRadius(150)
                        .padding(.bottom, 15)
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
                    RegisterButtonView()
//                    if register() == true {
//                        NavigationLink(destination: ShopView()) {
//                }
                    //}
            //}
        }
    }
    
    func register() -> Bool {
        var success: Bool = false
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if((error) != nil) {
                success = false
            }
            else {
                success = true
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
