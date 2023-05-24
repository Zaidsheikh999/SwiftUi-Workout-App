//
//  ExerciseCollection.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 10/04/2023.
//

import SwiftUI

struct ExerciseCollection: View {
    
    // For Back Button
    @Environment (\.presentationMode) private var presentationMode
    @Environment(\.dismiss) private var dismiss
    
    let columns = [
           GridItem(.fixed(150),spacing: 30),
           GridItem(.fixed(150))
       ]
    
    @ObservedObject var vm = ExerciseVM()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            LazyVGrid(columns: columns,spacing: 20){
                ForEach(vm.exercise){ exercise in
                    BottomView(exercise: exercise,width: 160, height: 200)
                }
            }
        }
        .navigationTitle("Trending Exercises")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            leading:
                BackButton(action: {
                    presentationMode.wrappedValue.dismiss()
                })
        )
    }
}

//struct ExerciseCollection_Previews: PreviewProvider {
//    static var previews: some View {
//        ExerciseCollection()
//    }
//}
