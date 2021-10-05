//
//  NavBarView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/17/21.
//

import SwiftUI
import LTMorphingLabel

struct NavBarView: View {
    
    @EnvironmentObject var viewModel : RegisterViewModel
    
    var body: some View {
        HStack {
            NavigationLink(
                destination: CartView(),
                label: {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(.trailing, 60)
            })
            
            Text("PlantHouse")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.trailing, 20)
                .foregroundColor(Color(red: 10 / 255, green: 132 / 255, blue: 10 / 255))
            
            Button(action: {
                viewModel.signOut()
            }, label: {
                Text("Sign Out")
                    .frame(width: 80, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .accentColor(.blue)
                    
            }).padding(.trailing, 1)
//            Button(action: {}, label: {
//                ZStack {
//                    Image(systemName: "cart")
//                        .font(.title)
//                        .foregroundColor(.black)
//                    Circle()
//                        .fill(Color.red)
//                        .frame(width: 14, height: 14, alignment: .center)
//                        .offset(x: 13, y: -10)
//                }
//            })
        }
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
            .previewLayout(.sizeThatFits)
    }
}
