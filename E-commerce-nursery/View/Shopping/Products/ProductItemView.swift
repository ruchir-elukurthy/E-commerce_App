//
//  ProductItem.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/19/21.
//

import SwiftUI

struct ProductItemView: View {
    
    let product: [Product] = Bundle.main.decode("SellingItems.json")
    
    let index: Int
    
    var body: some View {
        NavigationLink(destination: ProductDetailView()) {
            VStack(alignment: .leading, spacing: 6, content: {
                ZStack {
                    Image(product[index].image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150, alignment: .center)
                        .padding(10)
                }
                Text(product[index].name)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text("$"+priceToRoundOff(price: product[index].price))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            })
        }
    }
}

func priceToRoundOff(price: Float) ->  String {
    return String(format: "%.2f",price)
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(index: 0)
            .previewLayout(.sizeThatFits)
    }
}
