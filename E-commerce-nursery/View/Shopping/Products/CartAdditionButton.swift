//
//  CartAdditionButton.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/20/21.
//

import SwiftUI

struct CartAdditionButton: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "minus.circle")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .accentColor(.black)
                })
                
                Text("0")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 40, height: 40, alignment: .center)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "plus.circle")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .accentColor(.black)
                })
            }.padding(.trailing,170)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("ADD TO CART")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 340, height: 60)
                    .background(Color.red.opacity(0.85))
                    .cornerRadius(35.0)
            })
        }
        
    }
}

struct CartAdditionButton_Previews: PreviewProvider {
    static var previews: some View {
        CartAdditionButton()
    }
}
