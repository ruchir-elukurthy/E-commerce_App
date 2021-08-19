//
//  NavBarView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/17/21.
//

import SwiftUI

struct NavBarView: View {
    
    var body: some View {
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "line.horizontal.3")
                    .font(.title)
                    .foregroundColor(.blue)
            })
            
            Spacer()
            Text("PlantHouse")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 10 / 255, green: 132 / 255, blue: 10 / 255))
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            })
        }
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
            .previewLayout(.sizeThatFits)
    }
}
