//
//  ContentView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/6/21.
//

import SwiftUI

struct ImageOverlay: View {
    var body: some View {
        ZStack {
            Text("wrbvorwjbvrvwrbvj")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            GeometryReader { geo in
                Image("welcomeScreen")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(GeometryReader{ geometry in
                        ImageOverlay() // sized based on first
                            .frame(width: geometry.size.width, height: geometry.size.height*0.4)
                    })
                    .frame(width: geo.size.width)
                    .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
