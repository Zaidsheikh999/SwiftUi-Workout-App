//
//  ContentView.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 31/03/2023.
//

import SwiftUI

struct Home: View {
    @State private var showMore: Bool = false
    var body: some View {
        VStack(alignment: .center,spacing: 10) {
            HomeItem()
            NavigationLink(destination: Profile().hideNavigationBar(),isActive: $showMore) { EmptyView() }
        }
        .refreshable(action: {
            print("refresh")
        })
        .padding(edges: .horizontal,20)
        .navigationBarItems(
            leading:
                Button(action: {
                    showMore = true
                }, label: {
                    Image(systemName: "person")
                        .resizable()
                        .scaledToFill()
                    
                }), trailing:
                Button(action: {
                    print("Clicked User Image")
                }, label: {
                    Image(systemName: "bell")
                        .resizable()
                        .scaledToFill()
                    
                })
        )

    }
}


//struct Home_Previews: PreviewProvider {
//    static var previews: some View {
//        Home()
//    }
//}
