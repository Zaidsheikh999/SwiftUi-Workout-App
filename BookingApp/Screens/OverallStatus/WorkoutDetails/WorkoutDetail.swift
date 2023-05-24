//
//  WorkoutDetail.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 10/04/2023.
//

import SwiftUI

struct WorkoutDetail: View {
    
    // For Back Button
    @Environment (\.presentationMode) private var presentationMode
    @Environment(\.dismiss) private var dismiss
    
    @ObservedObject var vm = OverallVM()
    let workout: Workout
    
    let columns = [
           GridItem(.fixed(150),spacing: 30),
           GridItem(.fixed(150))
       ]
        
    
    var body: some View {
        ScrollView(.vertical){
        }
        .navigationTitle(workout.title!)
        .navigationBarItems(
            leading:
                BackButton(action: {
                    presentationMode.wrappedValue.dismiss()
                })
            )

    }
}

//struct WorkoutDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        WorkoutDetail()
//    }
//}
