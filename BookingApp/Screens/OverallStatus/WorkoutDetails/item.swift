//
//  item.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 13/04/2023.
//

import SwiftUI

struct item: View {
    
    let workout: Workout
    
    var body: some View {
        ZStack(){
            Image(workout.img!)
                .scaledToFit()
                .frame(width: 160,height: 200)
                .cornerRadius(15)
                .opacity(0.8)
                .shadowStyle()
        }
    }
}

//struct item_Previews: PreviewProvider {
//    static var previews: some View {
//        item()
//    }
//}
