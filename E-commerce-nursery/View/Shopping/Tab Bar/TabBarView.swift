//
//  TabBarView.swift
//  E-commerce-nursery
//
//  Created by Ruchir on 8/19/21.
//

import SwiftUI


//Navigation to different functionalities for the app.
struct TabBarView: View {
    @State var selectedItem = 0
    
    let tabBarImageItems = ["house", "plus.app.fill", "magnifyingglass.circle"]
    
    var body: some View {
        VStack {
            Spacer()

            HStack {
                Spacer()
                
                NavigationLink (
                    destination: ShopView(),            //Navigation to home shppoing page
                    label : {
                        Image(systemName: tabBarImageItems[0])
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(selectedItem == 0 ? Color(.black) : .gray)
                })
                
                Spacer()
                
                NavigationLink(
                    destination: UploadItemsToSell(),       //Navigation to view where people can post.
                    label: {
                        Image(systemName: tabBarImageItems[1])
                            .font(.system(size: 44, weight: .bold))
                            .foregroundColor(.red)
                    })
                
                Spacer()
                
                NavigationLink (
                    destination: NutritionInformationSearchView(),      //Navigation to nutrition search.
                    label : {
                        Image(systemName: tabBarImageItems[2])
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(selectedItem == 2 ? Color(.black) : .gray)
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
