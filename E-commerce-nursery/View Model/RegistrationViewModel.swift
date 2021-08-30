//
//  RegistrationViewModel.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/25/21.
//

import SwiftUI
import Firebase

class RegisterViewModel: ObservableObject {
    var email: String = ""
    var password: String = ""

    @Published var signedIn = false
    
    var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }

    func login(email: String, password: String)  {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            guard authResult != nil, error == nil else {
                return
            }
            DispatchQueue.main.async {
                self?.signedIn = true
            }
        }
    }

    func register(email: String, password: String) {

        Auth.auth().createUser(withEmail: email, password: password) { [weak self] authResult, error in
            guard authResult != nil, error == nil else {
                return
            }
            DispatchQueue.main.async {
                self?.signedIn = true
            }
        }
    }
    
    func signOut() {
        try? Auth.auth().signOut()
        
        self.signedIn = false
    }

}
