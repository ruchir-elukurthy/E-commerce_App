//
//  BuyButtonView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 10/7/21.
//

import SwiftUI

struct BuyButtonView: View {
    var body: some View {
        Button(action: {}, label: {
            Text("Buy Now")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.bottom, 10)
                .frame(width: 340, height: 60)
                .background(Color.red.opacity(0.85))
                .cornerRadius(35.0)
        })
    }
}

struct BuyButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BuyButtonView().previewLayout(.sizeThatFits)
    }
}
