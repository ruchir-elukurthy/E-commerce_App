//
//  SearchViewModel.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 10/5/21.
//

import Foundation
import Firebase

class SearchViewModel: ObservableObject {
    @Published var searchInfo = [searchData]()
    
    init() {
        let db = Firestore.firestore()
        
        db.collection("uploads").getDocuments {(snap, err) in
            if err != nil {
                print((err?.localizedDescription)!)
                return
            }
            
            for i in snap!.documents {
                let id = i.documentID
                let name = i.get("name") as! String
                let category = i.get("category") as! String
                let price = i.get("price") as! Float
                let quantity = i.get("quantity") as! Int
                let description = i.get("description") as! String
                let image_link = i.get("image_link") as! String
                let organization_name = i.get("organization_name") as! String
                self.searchInfo.append(searchData(id: id, name: name, category: category, price: price, quantity: quantity, description: description, image_link: image_link, organization_name: organization_name))
            }
        }
    }
    
    
}
