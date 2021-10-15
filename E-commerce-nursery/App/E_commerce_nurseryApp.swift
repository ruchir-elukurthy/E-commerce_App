//
//  E_commerce_nurseryApp.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/6/21.
//

import SwiftUI
import Firebase
import IQKeyboardManagerSwift
import LTMorphingLabel


//Top of the hierarchy.
@main
struct E_commerce_nurseryApp: App {
    init() {
        FirebaseApp.configure()
        IQKeyboardManager.shared.enable = true
    }
    var body: some Scene {
        let viewModel = RegisterViewModel()
        WindowGroup {
            ContentView().environmentObject(viewModel)          //sharing login/registration information to throughout the hierarchy using environment object for mapping user specific content.
        }
    }
}



