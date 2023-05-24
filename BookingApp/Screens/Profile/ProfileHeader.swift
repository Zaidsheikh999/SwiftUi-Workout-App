//
//  ProfileHeader.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 05/04/2023.
//

import SwiftUI

struct ProfileHeader: View {
    
    let profile: ProfileModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            
            Image(profile.userImage!)
                .resizable()
                .scaledToFill()
                .frame(w: 100, h: 100)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text(profile.name!)
                    .font(.system(size: 26,weight: .heavy,design: .default))
                    .foregroundColor(.blackWhite)
                
                Text("")
                    .font(fontName: .textRegular, fontSize: .size13)
                    .foregroundColor(.blackWhite)
                
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(edges: .top, 30)
        .padding(edges: .bottom, 20)
    }
}

//struct ProfileHeader_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileHeader()
//    }
//}
