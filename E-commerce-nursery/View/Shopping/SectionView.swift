//
//  SectionView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/18/21.
//

import SwiftUI

struct SectionView: View {
    
    var body: some View {
        
        VStack(spacing: 0) {
            Spacer()
            
            Text("CATEGORIES")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: -90))
            
            Spacer()
        }
        .background(Color.gray.cornerRadius(12))
        .frame(width: 85, height: 150)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
            .previewLayout(.sizeThatFits)
    }
}
