//
//  NavBarProductView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/19/21.
//

import SwiftUI

struct NavBarProductView: View {
    var body: some View {
        Image(systemName: "cart")
            .font(.title)
            .foregroundColor(.black)
    }
}

struct NavBarProductView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarProductView()
    }
}
