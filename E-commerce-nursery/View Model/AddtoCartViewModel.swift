//
//  AddtocartViewModel.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/26/21.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class AddtoCartViewModel: ObservableObject {
    
    @Published var Cartproduct: CartItems = CartItems(id: "", user: "", name: "", category: "", price: 0.0, quantity: 0, description: "", image_link: "", organization_name: "")
    
    var db = Firestore.firestore()
    
    func addData(product: CartItems) {
        do {
            let _ = try db.collection("products").addDocument(from: product)
        }
        catch {
            print(error)
        }
    }
    
    func save() {
        addData(product: Cartproduct)
    }
}
