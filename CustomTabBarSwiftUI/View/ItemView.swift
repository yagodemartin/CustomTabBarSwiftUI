//
//  ItemView.swift
//  CustomTabBarSwiftUI
//
//  Created by Yago de Martin Lopez on 22/2/22.
//

import SwiftUI

struct ItemView: View {
    @Binding var hideTab : Bool
    var bottomEdge: CGFloat
    
    @State var offset : CGFloat = 0
    @State var lastoffset : CGFloat = 0

    var body: some View {

        
        ScrollView(.vertical , showsIndicators:  false) {
            
            VStack(alignment: .leading, spacing: 20) {
                ForEach (allItems) { item in
                    CardView(item: item)
                }
            }
            .overlay(
                GeometryReader {  proxy -> Color in
                    let minY = proxy.frame(in: .global).minY
                    let durationOffset: CGFloat = 35

                    DispatchQueue.main.async {
                        print(minY)
                        if minY < offset {
                            
                            if offset < 0 && -minY > (lastoffset + durationOffset) {
                                withAnimation(.easeIn) {
                                    hideTab = true
                                }
                                
                                lastoffset = -offset
                            }
                            
                        }
                        
                        if minY < offset && -minY < (lastoffset - durationOffset) {
                            withAnimation(.easeIn) {
                                hideTab = false
                            }
                            
                            lastoffset = -offset
                        }
                           
                            
                                            
                        
                        self.offset = minY
                    }
                    return Color.clear
                }
                
            )
            .padding()
            .padding(.bottom, 15 + bottomEdge + 35 )
        }
    }
    
    
    @ViewBuilder
    
    func CardView(item : Item)-> some View {
        HStack(spacing : 15) {
            Text (String(item.id.first ?? "1"))
                .font(.title2)
                .fontWeight(.bold)
                .frame(width: 55, height: 55)
                 .background(item.tintColor, in : Circle())
            
            VStack(alignment: .leading, spacing: 8)
            {
                Text(item.desc)
                Text(item.message)

            }
            .frame(maxWidth: .infinity,alignment: .leading)
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(hideTab: .constant(false) , bottomEdge: 15)
    }
}
