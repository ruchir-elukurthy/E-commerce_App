//
//  LoginView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/6/21.
//

import SwiftUI
import Firebase

//This is the view is for login.
struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var didLogIn: Bool = false
    @EnvironmentObject var viewModel : RegisterViewModel
    
    var body: some View {
        
    VStack {
//        Text("Welcome!")
//           .font(.largeTitle)
//           .fontWeight(.semibold)
        
        Spacer(minLength: 50)
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
        .disableAutocorrection(true)

        SecureField("Password", text: $password)
                .padding()
                .background(Color(UIColor.lightGray))
                .cornerRadius(100.0)
                .padding(.bottom, 20)
                .autocapitalization(.none)
        
        Button(action: {
            guard !email.isEmpty, !password.isEmpty else {
                return
            }
            viewModel.login(email: email, password: password)   //passing user entered email and password to the view model.
        }, label: {
            Text("Login")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.green)
                .cornerRadius(15.0)
        })
        
        Spacer(minLength: 20)
        
        Text("New User? Click on Register")
            .bold()
            .foregroundColor(.red)
        NavigationLink("Register",destination: RegisterView())
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
        }
    .padding(.bottom,180)
    .accentColor( .black) 
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
