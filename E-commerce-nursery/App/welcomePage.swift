//
//  welcomePage.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/7/21.
//

import SwiftUI

struct welcomePage: View {
    var body: some View {
        NavigationView {
            VStack {
                GeometryReader { geo in
                    Image("welcomeScreen")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .overlay(GeometryReader{ geometry in
                            HeaderView(text: "Support local nurseries", color: Color.white, fontSize: Font.title, fontWeight: Font.Weight.bold) // sized based on first
                                .frame(width: geometry.size.width, height: geometry.size.height*0.3)
                            HeaderView(text: "Find affordable and quality plants today", color: Color.white, fontSize: Font.title3, fontWeight: Font.Weight.light) // sized based on first
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
}

struct welcomePage_Previews: PreviewProvider {
    static var previews: some View {
        welcomePage()
    }
}
