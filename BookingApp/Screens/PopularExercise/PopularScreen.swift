//
//  PopularScreen.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 06/04/2023.
//

import SwiftUI

struct PopularScreen: View {
    
    // For Back Button
    @Environment (\.presentationMode) private var presentationMode
    @Environment(\.dismiss) private var dismiss
    
    @State private var showMore: Bool = false
    
    @ObservedObject var vm = ExerciseVM()
    
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing: 15){
                TopView()

                MidView()
                
                SectionHeader(title: "Trending now", rightText: "View All"){
                    self.showMore = true
                }
                .padding(edges: .horizontal, 15)
                .padding(edges: .top,10)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 15){
                        ForEach((vm.exercise).enumerated().filter{(0...2).contains($0.offset)}.map{$1}){ exercise in
                            BottomView(exercise: exercise,width: 200,height: 250)
                        }
                    }
                    .padding(edges: .horizontal, 15)
                }
                
                NavigationLink(destination: ExerciseCollection().navigationBarHidden(false).navigationBarTitleDisplayMode(.inline).navigationBarBackButtonHidden(true),isActive: $showMore) { EmptyView() }

            }
            .padding(edges: .top,15)
            .navigationTitle("Popular Exercises")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    BackButton(action: {
                        presentationMode.wrappedValue.dismiss()
                    })
            )
        }
        .padding(edges: .horizontal,0)
    }
}

struct PopularScreen_Previews: PreviewProvider {
    static var previews: some View {
        PopularScreen()
    }
}
