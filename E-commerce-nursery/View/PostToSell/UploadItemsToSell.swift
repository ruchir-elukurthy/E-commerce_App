//
//  UploadItmsToSell.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/27/21.
//

import SwiftUI

struct UploadItemsToSell: View {
    
    @StateObject var viewModel = UploadNewProductViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Enter product category", text: $viewModel.product.category)
                    TextField("Enter product name", text: $viewModel.product.name)
                    TextField("Price", value: $viewModel.product.price, formatter: NumberFormatter())
                    TextField("Quantity", value: $viewModel.product.quantity, formatter: NumberFormatter())
                    TextField("Enter product description", text: $viewModel.product.description)
                    TextField("Enter organization name", text: $viewModel.product.organization_name)
                    UploadImageToSell(url: $viewModel.product.image_link)
                }
            }
        }.navigationBarTitle("New").accentColor(.black)
        .navigationBarItems(trailing: Button(action: {
            SaveAndDismiss()
        }, label: {
            Text("Upload")
        }))
    }
    
    func SaveAndDismiss() {
        viewModel.save()
        presentationMode.wrappedValue.dismiss()
    }
}

struct UploadItemsToSell_Previews: PreviewProvider {
    static var previews: some View {
        UploadItemsToSell()
    }
}
