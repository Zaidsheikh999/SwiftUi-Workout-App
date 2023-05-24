//
//  Status.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 05/04/2023.
//

import SwiftUI

struct Status: View {
    
    // For Back Button
    @Environment (\.presentationMode) private var presentationMode
    @Environment(\.dismiss) private var dismiss
    
    @ObservedObject var vm = OverallVM()
    
    @State private var showMore: Bool = false
    
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing: 20){
                StatusTop()
                
                SectionHeader(title: "Workout Goals",rightText: "See more"){
                    self.showMore = true
                }
                VStack(spacing: 15){
                    ForEach(vm.workout.enumerated().filter{(0...2).contains($0.offset)}.map{$1}) { workout in
                    WorkoutStatus(workout: workout)
                    }
                }
                
                NavigationLink(destination: WorkoutListView().navigationBarHidden(false).navigationBarTitleDisplayMode(.inline).navigationBarBackButtonHidden(true),isActive: $showMore) { EmptyView() }
            }
            .padding(edges: .top,15)
            .padding(edges: .horizontal,15)
        }
        .navigationBarItems(
            leading:
                BackButton(action: {
                    presentationMode.wrappedValue.dismiss()
                }),
            trailing:
                Button(action: {
//                    self.showMore = true
                    print("Clicked User Image")
                }, label: {
                        Image(systemName: "ellipsis")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFill()
                })
        )

    }
}

//struct Status_Previews: PreviewProvider {
//    static var previews: some View {
//        Status()
//    }
//}
