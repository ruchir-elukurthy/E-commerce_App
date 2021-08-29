//
//  FetchProductInformation.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/28/21.
//

import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreSwift

class FetchProductsViewModel: ObservableObject {
    @Published var products = [UploadProduct]()
    
    private var db = Firestore.firestore()
    
    func fetchData() {
        db.collection("uploads").addSnapshotListener { (querySnapshot, err) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
            self.products = documents.compactMap { (QueryDocumentSnapshot) -> UploadProduct? in
                return try? QueryDocumentSnapshot.data(as: UploadProduct.self)
                
            }
        }
    }
    
    func getNumberOfCollection() -> Int {
        var numberOfElements = -1
        db.collection("uploads").getDocuments { (snapshot, error) in
            guard let snapshot = snapshot, error == nil else {
             //handle error
             return
            }
            numberOfElements = snapshot.documents.count
        }
        return numberOfElements
    }
}

