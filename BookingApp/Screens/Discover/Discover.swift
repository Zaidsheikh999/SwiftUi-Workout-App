//
//  Home.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 31/03/2023.
//

import SwiftUI

struct Discover: View {
    
    @State private var showMore: Bool = false
    
    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .center, spacing: 15){
                Spacer()
                SectionHeader(title: "Popular Exercises",rightText: "See more"){
                    self.showMore = true
                }
                
                TopExerciseView()
                
                SectionHeader(title: "Our Collection")
                
                CollectionExerciseView()
                
                NavigationLink(destination: PopularScreen().navigationBarTitleDisplayMode(.inline).navigationBarBackButtonHidden(true),isActive: $showMore) { EmptyView() }
 
            }
            .padding(.horizontal, 15)
        }
        .padding(edges: .horizontal, 0)
        .navigationBarItems(
            trailing:
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

struct Discover_Previews: PreviewProvider {
    static var previews: some View {
        Discover()
    }
}
