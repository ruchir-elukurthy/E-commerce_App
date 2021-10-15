//
//  ARTabView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 10/14/21.
//

import SwiftUI

struct BrowseButtonView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        HStack {
            Button(action: {
                print("Browse Button Click")
                showingSheet.toggle()
            }, label: {
                Image(systemName: "square.grid.2x2")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.black)
            })
            .sheet(isPresented: $showingSheet) {
                CatalogSheetView()
            }
            .padding(.bottom, 20)
        }
    }
}

struct BrowseButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseButtonView().previewLayout(.sizeThatFits)
    }
}
