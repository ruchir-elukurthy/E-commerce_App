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


@main
struct E_commerce_nurseryApp: App {
    init() {
        FirebaseApp.configure()
        IQKeyboardManager.shared.enable = true
        LTMorphingLabel.
    }
    var body: some Scene {
        let viewModel = RegisterViewModel()
        WindowGroup {
            ContentView().environmentObject(viewModel)
        }
    }
}
