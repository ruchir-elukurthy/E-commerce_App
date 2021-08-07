//
//  RegisterView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/6/21.
//

import SwiftUI

struct RegisterButtonView: View {
    var body: some View {
        ZStack {
            Button(action: {print("Button tapped")}) {
                Text("REGISTER")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(Color.green)
                    .cornerRadius(15.0)
            }
        }
        .opacity(0.8)
    }
}

struct RegisterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
