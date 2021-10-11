//
//  NutritionInformationSearchView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 10/7/21.
//

import SwiftUI

struct NutritionInformationSearchView: View {
    var body: some View {
        Link("Privacy Policy", destination: URL(string: "https://ruchir-elukurthy.github.io/PrivacyPolicy/")!)
            .font(.largeTitle)
            .foregroundColor(.red)
    }
}

struct NutritionInformationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionInformationSearchView()
    }
}
