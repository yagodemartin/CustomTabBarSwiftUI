//
//  CustomTabBar.swift
//  CustomTabBarSwiftUI
//
//  Created by Yago de Martin Lopez on 22/2/22.
//

import SwiftUI

struct CustomTabBar: View {
    
    @Binding var currentTab: String
    var bottomEdge: CGFloat
    
    var body: some View {
        HStack (spacing: 0) {
            
            ForEach([Tabs.Location.rawValue , Tabs.Help.rawValue] , id : \.self) { image in
                TabButton(image: image, currentTab: $currentTab)
            }
            
        }
        .padding(.top , 15)
        .padding(.bottom , bottomEdge)
        .background(Color.white)

    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(currentTab: .constant(Tabs.Location.rawValue), bottomEdge: 15)
    }
}


struct TabButton: View {
    
    var image: String
    @Binding var currentTab: String
    
    var body: some View {
        Button {
            withAnimation{
                currentTab = image
            }
        } label: {
            Image(image)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35)
                .foregroundColor(currentTab == image ? .pink : .gray)
                .frame(maxWidth: .infinity)
        }
    }
}
