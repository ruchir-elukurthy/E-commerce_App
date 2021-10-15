//
//  CatalogSheetView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 10/14/21.
//
import SwiftUI


struct CatalogSheetView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button("Press to dismiss") {
            presentationMode.wrappedValue.dismiss()
        }
        .font(.title)
        .padding()
        .background(Color.black)
    }
}

