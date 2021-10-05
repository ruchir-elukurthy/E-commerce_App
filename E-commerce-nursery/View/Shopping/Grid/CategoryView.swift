//
//  CategoryView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/18/21.
//

import SwiftUI

struct CategoryView: View {
    
    let category : [Category] = Bundle.main.decode("NurseryCategories.json")
    
    let index: Int
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack(alignment: .center, spacing: 5, content: {
                Text(category[index].name)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .frame(width: 120, height: 20, alignment: .center)
            })
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12)
            .stroke(Color.gray,lineWidth: 1))
        })
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(index: 0)
            .previewLayout(.sizeThatFits)
    }
}
