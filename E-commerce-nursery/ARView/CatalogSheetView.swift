//
//  CatalogSheetView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 10/14/21.
//
import SwiftUI


struct CatalogSheetView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let ar_images: [AR_image] = Bundle.main.decode("ARimage.json")
    
    let columns = [
        GridItem(.fixed(30)),
        GridItem(.fixed(30)),
        GridItem(.fixed(30))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 30), count: 3), content: {
                ForEach(0 ..< 3) { item in
                    Image(ar_images[item].image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 100, alignment: .center)
                        .padding(50)
                }
            })
        }
        .font(.title)
        .padding()
    }
}

struct CatalogSheetView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogSheetView()
           // .previewLayout(.fixed(width: 400, height: 265))
    }
}

