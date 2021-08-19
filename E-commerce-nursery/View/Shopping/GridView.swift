//
//  GridView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/18/21.
//

import SwiftUI

struct GridView: View {
    
    let items = 1...7

    let rows = [
        GridItem(.fixed(50)),
        GridItem(.fixed(50))
    ]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, alignment: .center) {
                Section(header: SectionView()) {
                    ForEach(0 ..< 7) { item in
                        CategoryView(index: item)
                    }
                }
            }
            .background(Color.gray.opacity(0.3))
            .frame(height: 150)
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
