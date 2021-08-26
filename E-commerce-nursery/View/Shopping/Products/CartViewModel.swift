//
//  CartViewModel.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/25/21.
//

import SwiftUI
import FirebaseFirestore

class CartViewModel: ObservableObject {
    @Published var products = [CartItems]()
    
    private var db = Firestore.firestore()
    
    func fetchData() {
        db.collection("products").addSnapshotListener { (querySnapshot, err) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
            self.products = documents.map { (QueryDocumentSnapshot) -> CartItems in
                let data = QueryDocumentSnapshot.data()
                
                let name = data["name"] as? String ?? ""
                let price = data["price"] as? String ?? ""
                let user = data["user"] as? String ?? ""
                
                return CartItems(user: user, name: name, price: price)
            }
        }
    }
}
