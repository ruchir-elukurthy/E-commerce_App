//
//  SearchBarView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 10/5/21.
//

import SwiftUI

struct SearchBarView: View {
    @State var search_text: String = ""
     
    @Binding var resultant_search_data: [searchData]
     
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Search ...", text: $search_text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.white))
                .cornerRadius(8)
                .padding(.horizontal, 10)
            
            Button(action: {
                self.search_text = ""
            }) {
                Text("Cancel")
                    .foregroundColor(.blue)
            }
            .padding(.trailing, 10)
            .transition(.move(edge: .trailing))
            .animation(.default)
        }
        
        if self.search_text != "" {
            if self.resultant_search_data.filter({$0.name.lowercased().contains(self.search_text.lowercased())}).count == 0 {
                Text("No results found")
                    .foregroundColor(Color.black).padding()
            }
            
            else {
                List(self.resultant_search_data.filter{$0.name.lowercased().contains(self.search_text.lowercased())}) { i in
                    NavigationLink(
                        destination: SearchDetailView(data: i)) {
                        Text(i.name)
                    }
                }.frame(height: UIScreen.main.bounds.height/5)
            }
        }
    }
}
    

