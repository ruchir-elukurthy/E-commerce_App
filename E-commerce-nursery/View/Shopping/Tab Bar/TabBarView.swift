//
//  TabBarView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/19/21.
//

import SwiftUI

struct TabBarView: View {
    @State var selectedItem = 0
    
    let tabBarImageItems = ["house", "magnifyingglass.circle", "plus.app.fill", "person", "gear"]
    
    var body: some View {
        
        VStack {
            Spacer()

            HStack {
                ForEach(0..<5) { num in
                    Button(action: {
                        selectedItem = num
                    }, label: {
                        Spacer()
                        if(num == 2) {
                            Image(systemName: tabBarImageItems[num])
                                .font(.system(size: 44, weight: .bold))
                                .foregroundColor(.red)
                            Spacer()
                        }
                        else {
                            NavigationLink(destination: ProductDetailView())  {
                                Image(systemName: tabBarImageItems[num])
                                    .font(.system(size: 24, weight: .bold))
                                    .foregroundColor(selectedItem == num ? Color(.black) : .gray)
                            }
                            Spacer()
                        }
                    })
                }
            }
        }
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 10,
              maxHeight: 60,
              alignment: .bottomLeading
            )
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView().previewLayout(.sizeThatFits)
    }
}
