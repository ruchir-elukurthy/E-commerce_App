//
//  HeaderView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/7/21.
//

import SwiftUI

struct HeaderView: View {
    var text: String
    var color: Color
    var fontSize: Font
    var fontWeight: Font.Weight
    var body: some View {
        ZStack {
            Text(text)
            Text(text)
                .font(fontSize)
                .fontWeight(fontWeight)
                .padding(10)
                .foregroundColor(color)
        }
        .opacity(0.8)
        .padding(6)
    }
}

//struct HeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeaderView()
//    }
//}
