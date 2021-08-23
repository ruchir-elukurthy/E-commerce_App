//
//  AddToCartView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/22/21.
//

import SwiftUI

struct AddToCartView: View {
   
   
    @Binding var items:[Product]
    
    @State private var isEditing:Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            ZStack {

                // Header - "Your Cart"
                VStack(alignment: .center, spacing: 4) {
                    Text("Your Cart")
                        .font(Font.system(size: 16, weight: .bold, design: .rounded))
                    Text("\(items.count) Item\(items.count == 1 ? "" : "s")")
                        .font(Font.system(size: 13, weight: .semibold, design: .rounded))
                        .foregroundColor(Color.gray)
                }
                
                HStack {
                    Spacer()
                    Button(action: {
                        withAnimation {
                            self.isEditing = !self.isEditing
                        }
                        
                    }) {
                        if self.isEditing {
                            Text("Done")
                            .font(Font.system(size: 16, weight: .bold, design: .rounded))
                            .padding(.trailing, 20)
                        } else {
                            Image(systemName: "ellipsis")
                            .padding(.trailing, 20)
                        }
                        
                    }.foregroundColor(Color(red: 105/255, green: 105/255, blue: 200/255))
                }
                
            }
                
            }
            .padding(.bottom, 10)
        }
}

struct AddToCartView_Previews: PreviewProvider {
    
    static var previews: some View {
        AddToCartView().previewLayout(.sizeThatFits)
    }
}
