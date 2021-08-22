//
//  E_commerce_nurseryApp.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/6/21.
//

import SwiftUI
import Firebase
import IQKeyboardManagerSwift


@main
struct E_commerce_nurseryApp: App {
    init() {
        FirebaseApp.configure()
        IQKeyboardManager.shared.enable = true
    }
    var body: some Scene {
        let viewModel = RegisterViewModel()
        WindowGroup {
            ContentView().environmentObject(viewModel)
        }
    }
}
