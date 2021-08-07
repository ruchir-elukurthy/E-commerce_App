//
//  ContentView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/6/21.
//

import SwiftUI

struct Header: View {
    
    var text: String
    var body: some View {
        ZStack {
            Text(text)
                .font(.title)
                .fontWeight(.bold)
                .padding(6)
                .foregroundColor(.white)
        }
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}


struct SubHeader: View {
    
    var text: String
    var body: some View {
        ZStack {
            Text(text)
                .font(.title3)
                .fontWeight(.light)
                .padding(10)
                .foregroundColor(.white)
        }
        .opacity(0.8)
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
                        Header(text: "Support local nurseries") // sized based on first
                            .frame(width: geometry.size.width, height: geometry.size.height*0.3)
                        SubHeader(text: "Shop local nursery today") // sized based on first
                            .frame(width: geometry.size.width, height: geometry.size.height*0.4)
                        RegisterButtonView()
                            .frame(width: geometry.size.width, height: geometry.size.height*1.55)
                        LoginButtonView()
                            .frame(width: geometry.size.width, height: geometry.size.height*1.8)
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
