//
//  WorkoutListView.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 10/04/2023.
//

import SwiftUI

struct WorkoutListView: View {
    
    // For Back Button
    @Environment (\.presentationMode) private var presentationMode
    @Environment(\.dismiss) private var dismiss
    
    @ObservedObject var vm = OverallVM()
    
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing: 15){
            ForEach(vm.workout) { workout in
                WorkoutStatus(workout: workout)
                }
            }
            .padding(edges: .horizontal,15)
        }
        .navigationTitle("Workout Goals")
        .navigationBarItems(
            leading:
                BackButton(action: {
                    presentationMode.wrappedValue.dismiss()
                })
            )
    }
}

struct WorkoutListView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutListView()
    }
}
