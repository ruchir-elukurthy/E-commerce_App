//
//  TabBarView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/19/21.
//

import SwiftUI

struct TabBarView: View {
    @State var selectedItem = 0
    
    let tabBarImageItems = ["house", "plus.app.fill", "magnifyingglass.circle","leaf"]
    
    var body: some View {
        VStack {
            Spacer()

            HStack {
                Spacer()
                
                NavigationLink (
                    destination: ShopView(),
                    label : {
                        Image(systemName: tabBarImageItems[0])
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(selectedItem == 0 ? Color(.black) : .gray)
                })
                
                Spacer()
                
                NavigationLink(
                    destination: UploadItemsToSell(),
                    label: {
                        Image(systemName: tabBarImageItems[1])
                            .font(.system(size: 44, weight: .bold))
                            .foregroundColor(.red)
                    })
                
                Spacer()
                
                NavigationLink (
                    destination: NutritionInformationSearchView(),
                    label : {
                        Image(systemName: tabBarImageItems[2])
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(selectedItem == 2 ? Color(.black) : .gray)
                })
                Spacer()
                
                NavigationLink(
                    destination: ARCatalogView(),
                    label: {
                        Image(systemName: tabBarImageItems[3])
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(selectedItem == 3 ? Color(.black) : .gray)
                    })
                Spacer()
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
