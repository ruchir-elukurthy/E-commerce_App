//
//  RatingView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/20/21.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        VStack {
            Text("RATINGS")
                .opacity(0.6)
            Image(systemName: "star")
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView().previewLayout(.sizeThatFits)
    }
}
