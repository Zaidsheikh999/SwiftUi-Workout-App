//
//  Workout.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 06/04/2023.
//

import Foundation

struct Workout: Identifiable, Codable{
    var id = UUID().uuidString
    var icon: String?
    var title: String?
    var exerciseCount: String?
    var percentage: Double?
    var img: String?
}
