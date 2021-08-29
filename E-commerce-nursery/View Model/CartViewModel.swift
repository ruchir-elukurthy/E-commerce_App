//
//  CartViewModel.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/25/21.
//

import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreSwift

class CartViewModel: ObservableObject {
    @Published var cartProducts = [CartItems]()
    
    private var db = Firestore.firestore()
    
    func fetchData() {
        db.collection("products").addSnapshotListener { (querySnapshot, err) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
            self.cartProducts = documents.compactMap { (QueryDocumentSnapshot) -> CartItems? in
                return try? QueryDocumentSnapshot.data(as: CartItems.self)
                
            }
        }
    }
}
