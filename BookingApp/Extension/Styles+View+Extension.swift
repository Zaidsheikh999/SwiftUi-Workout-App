//
//  Styles+View+Extension.swift
//  iOS Concurrency
//
//  Created by Mehran Khan on 23/11/2022.
//

import SwiftUI


extension View {
    
    func defaultViewStyle() -> some View {
        self
            .foregroundColor(.whiteBlack)
            .font(fontName: .bold, fontSize: .size30)
            .padding(edges: .all, 20)
            .background(.black)
    }
    
    func shadowStyle() -> some View {
        self
            .shadow(color: Color.blackWhite.opacity(0.15), radius: 10, x: 0, y: 0)
    }
    
    func cardStyle() -> some View {
        self
            .padding(edges: .horizontal, 14)
            .padding(edges: .vertical, 16)
            .background(.white)
            .cornerRadius(5)
            .shadowStyle()
            
    }
    
    func listItemStyle() -> some View {
        self
            .frame(maxWidth: .infinity)
            .cardStyle()
            .listRowSeparator(.hidden)
            .listRowInsets(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
    }
    
    func MilestonecardStyle() -> some View {
        self
            .padding(edges: .horizontal, 14)
            .padding(edges: .vertical, 12)
            .background(.white)
            .cornerRadius(5)
            .shadowStyle()
            
    }
    
}
