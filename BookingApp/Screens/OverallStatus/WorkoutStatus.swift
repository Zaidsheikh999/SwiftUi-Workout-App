//
//  WorkoutStatus.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 06/04/2023.
//

import SwiftUI

struct WorkoutStatus: View {
    
    let workout: Workout
    
    @State private var showMore: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 15) {
                VStack {
                    Image(workout.icon ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 34, height: 34)
                        .cornerRadius(5)
                }
                .padding(edges: .leading,5)
                .frame(maxHeight: .infinity, alignment: .leading)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(workout.title ?? "")
                        .foregroundColor(.black)
                        .font(.system(size: 14, weight: .semibold, design: .default))
                    Text("\(workout.exerciseCount ?? "") Exercise")
                        .foregroundColor(.gray)
                        .font(.system(size: 12, weight: .light,design: .default))
                }
                .padding(edges: .vertical,20)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                
                Spacer()
                
                ZStack() {
                    CircularProgressView(progress: workout.percentage ?? 0,textColor: .black)
                }
                .frame(width: 45, height: 45)
                .padding(edges: .trailing, 10)
                
            }
            NavigationLink(destination: WorkoutDetail(workout: workout).hideNavigationBar(), isActive: $showMore) {EmptyView()}.hidden().frame(w: 0, h: 0)
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .listRowSeparator(.hidden)
        .listRowInsets(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
        .padding(edges: .horizontal, 14)
        .padding(edges: .vertical, 16)
        .background(.white)
        .cornerRadius(10)
        .shadowStyle()
        .onTapGesture {
            self.showMore = true
        }
    }
}

//struct WorkoutStatus_Previews: PreviewProvider {
//    static var previews: some View {
//        WorkoutStatus()
//    }
//}
