//
//  ContentView.swift
//  CustomTabBarSwiftUI
//
//  Created by Yago de Martin Lopez on 22/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader {     proxy in
            let bottomEdge = proxy.safeAreaInsets.bottom
       
            HomeView(bottomEdge: (bottomEdge == 0 ? 15 : bottomEdge ))
                .ignoresSafeArea(.all, edges: .bottom)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
