//
//  NavBarProductView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/19/21.
//

import SwiftUI

struct NavBarProductView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("PlantHouse")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.leading, 30)
                .foregroundColor(Color(red: 10 / 255, green: 132 / 255, blue: 10 / 255))
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                }
            })
        }
    }
}

struct NavBarProductView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarProductView().previewLayout(.sizeThatFits)
    }
}
