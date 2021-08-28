//
//  UploadNewProductViewModel.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/27/21.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class UploadNewProductViewModel: ObservableObject {
    @Published var product: UploadProduct = UploadProduct(id: "", name: "", category: "", price: 0.0, quantity: 0, description: "", organization_name: "")
    
    private var db = Firestore.firestore()
    
    func addProduct(product: UploadProduct) {
        do {
            let _ = try db.collection("uploads").addDocument(from: product)
        }
        catch {
            print(error.localizedDescription)
        }
    }
    
    func save() {
        addProduct(product: product)
    }
}
