//
//  Profile.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 04/04/2023.
//

import SwiftUI

struct Profile: View {
    
    // For Back Button
    @Environment (\.presentationMode) private var presentationMode
    @Environment(\.dismiss) private var dismiss
    
    @ObservedObject var vm = ProfileVM()
    
    var body: some View {
        ScrollView(){
            ForEach(vm.profile){ profile in
                ProfileHeader(profile: profile)
                    .padding(edges: .horizontal,20)
            }
            
            LazyVStack(spacing: 0){
                ForEach(vm.item){item in
                    ProfileItem(item: item)
                }
            }
        }
        .padding(edges: .horizontal, 0)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            leading:
                BackButton(action: {
                    presentationMode.wrappedValue.dismiss()
                })
        )
    }
}

//struct Profile_Previews: PreviewProvider {
//    static var previews: some View {
//        Profile()
//    }
//}
