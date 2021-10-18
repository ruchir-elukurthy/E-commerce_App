//
//  RegisterView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/6/21.
//

import SwiftUI
import Firebase

//View for registraration
struct RegisterView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @EnvironmentObject var viewModel : RegisterViewModel
    
    var body: some View {
        VStack {
//            Text("Welcome!")
//               .font(.largeTitle)
//               .fontWeight(.semibold)
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
            
            Button(action: {
                guard !email.isEmpty, !password.isEmpty else {
                    return
                }
                viewModel.register(email: email, password: password)    //passing information from view to view model.
            }, label: {
                Text("Register")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(Color.green)
                    .cornerRadius(15.0)
            })
        }.padding(.bottom,80)
    }
}


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
