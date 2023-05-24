//
//  MainView.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 31/03/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            NavigationView{
                Home()
                    .navigationTitle("Welcome Back!")
                    .navigationBarHidden(false)
                    .navigationBarTitleDisplayMode(.large)
            }
            .tabItem {
               Image(systemName: "house.fill")
            }
            NavigationView{
                Discover()
                    .navigationTitle("Discover")
                    .navigationBarHidden(false)
                    .navigationBarTitleDisplayMode(.large)
            }
            .tabItem {
               Image(systemName: "magnifyingglass.circle.fill")
            }
        }
        .accentColor(.black)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
