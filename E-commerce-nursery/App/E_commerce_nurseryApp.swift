//
//  E_commerce_nurseryApp.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/6/21.
//

import SwiftUI
import Firebase


@main
struct E_commerce_nurseryApp: App {
    init() {
      FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
