//
//  TabView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/17/21.
//

import SwiftUI

struct TabImageView: View {
    
    let plants : [Plant] = Bundle.main.decode("gardenImages.json")
    
    var body: some View {
        TabView {
            ForEach(0 ..< 3) { item in
                Image(plants[item].image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 265)
                    .cornerRadius(12.0)
            }
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct TabImageView_Previews: PreviewProvider {
    let plants : Plant
    static var previews: some View {
        TabImageView()
            .previewLayout(.fixed(width: 400, height: 265))
    }
}
