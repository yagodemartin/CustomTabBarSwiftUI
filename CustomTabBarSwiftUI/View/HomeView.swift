//
//  HomeView.swift
//  CustomTabBarSwiftUI
//
//  Created by Yago de Martin Lopez on 22/2/22.
//

import SwiftUI

struct HomeView: View {

    @State var currentTab = Tabs.Location.rawValue
    var bottomEdge: CGFloat
    @State  var hideBar = false
    
    init(bottomEdge: CGFloat) {
        UITabBar.appearance().isHidden = true
        self.bottomEdge = bottomEdge
    }
    
    var body: some View {

        TabView(selection: $currentTab) {
         
           ItemView(hideTab: $hideBar, bottomEdge: bottomEdge)
            .tag(Tabs.Location.rawValue)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Text ("Help").tag(Tabs.Help.rawValue)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue)
        }
        .overlay(
        
            CustomTabBar(currentTab: $currentTab, bottomEdge: bottomEdge  )
                .offset(y: hideBar ? (15 + 35 + bottomEdge ) : 0)
            , alignment: .bottom
        )
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(bottomEdge: 15)
    }
}


enum Tabs: String  {
    case Location
    case Help
}
