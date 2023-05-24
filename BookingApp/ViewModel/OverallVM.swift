//
//  OverallVM.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 06/04/2023.
//

import Foundation

class OverallVM: ObservableObject{
    @Published var workout: [Workout] = []
    
    init(){
        self.addData()
    }
    
    func addData(){
        workout = workoutData
    }
    
    let workoutData = [
           Workout(icon: "arm",title: "Arm & shoulder muscle",exerciseCount: "12",percentage: 56,img: "ex1"),
           Workout(icon: "hand",title: "Hand grip muscle",exerciseCount: "11",percentage: 46,img: "ex2"),
           Workout(icon: "leg",title: "Leg muscle",exerciseCount: "13",percentage: 76,img: "ex3"),
           Workout(icon: "arm",title: "Arm & shoulder muscle",exerciseCount: "12",percentage: 56,img: "ex4"),
           Workout(icon: "hand",title: "Hand grip muscle",exerciseCount: "11",percentage: 46,img: "ex2"),
           Workout(icon: "leg",title: "Leg muscle",exerciseCount: "13",percentage: 76,img: "ex3"),
           Workout(icon: "arm",title: "Arm & shoulder muscle",exerciseCount: "12",percentage: 56,img: "ex1"),
           Workout(icon: "hand",title: "Hand grip muscle",exerciseCount: "11",percentage: 46,img: "ex4"),
           Workout(icon: "leg",title: "Leg muscle",exerciseCount: "13",percentage: 76,img: "ex3"),
        ]
}
