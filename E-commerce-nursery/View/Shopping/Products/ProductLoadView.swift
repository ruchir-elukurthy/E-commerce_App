//
//  ProductLoadView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/28/21.
//

import SwiftUI

extension Image {

    func data(url:URL) -> Self {
        if let data = try? Data(contentsOf: url) {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        }
        return self
            .resizable()
    }
}

struct ProductLoadView: View {
    
    @ObservedObject var loadViewModel = FetchProductsViewModel()
    
    var body: some View {
        
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 10), count: 2), content: {
                ForEach(loadViewModel.products) {products in
                    NavigationLink(destination: ProductInformationView(product: products)) {
                        VStack {
                            ZStack {
                                Image(systemName: "person.fill")
                                    .data(url: (URL(string: products.image_link) ?? URL(string: "https://firebasestorage.googleapis.com/v0/b/ecommercenursery.appspot.com/o/images%2F52DF2D6A-8505-43D2-9B6C-36A8CDEB4B8B.png?alt=media&token=69c9c305-b049-4f6d-8c96-f8db820d5ca4")!))
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 100, alignment: .center)
                                    .padding(10)
                            }
                            Text(products.name)
                                .font(.title3)
                                .fontWeight(.bold)
                            Text(String(products.price))
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                            
                        }
                    }
                }

            }).onAppear {
            self.loadViewModel.fetchData()
        }
    }
}

struct ProductLoadView_Previews: PreviewProvider {
    static var previews: some View {
        ProductLoadView().previewLayout(.sizeThatFits)
    }
}

