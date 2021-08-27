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
    
    @Published var Cartproduct: CartItems = CartItems(user: "", name: "", price: 0)
    
    var db = Firestore.firestore()
    
    func addData(product: CartItems) {
        do {
            let _ = try db.collection("products").addDocument(from: product)
        }
        catch {
            print(error)
        }
    }
}
