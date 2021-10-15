//
//  ARCatalog.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 10/14/21.
//

import SwiftUI

struct ARCatalogView: View {
    
    @State private var showCatalog = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            ARViewContainer()
            BrowseButtonView()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ARCatalogView_Previews: PreviewProvider {
    static var previews: some View {
        ARCatalogView()
    }
}
