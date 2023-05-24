//
//  ProfileItem.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 05/04/2023.
//

import SwiftUI

struct ProfileItem: View {
    let item: itemModel
    var body: some View {
        HStack(spacing: 21) {

            Image(systemName: "\(item.icon!)")
            
            Text(item.title!)
                .font(.system(size: 20,weight: .regular, design: .default))
                .foregroundColor(.blackWhite)
                .frame(maxW: .infinity, alignment: .topLeading)
            
        }
        .padding(20)
        .padding(edges: .bottom, 0)
        .contentShape(Rectangle())
    }
}

//struct ProfileItem_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileItem()
//    }
//}
