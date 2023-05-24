//
//  Exercise.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 07/04/2023.
//

import Foundation


struct Exercise: Codable, Identifiable{
    var id = UUID()
    var icon: String?
    var title: String?
    var bg: bg?
    var banner: String?
    var desc: String?
    var rating: String?
    var reviews: String?
    var detail: detail?
    var cardImg: String?
    
}
struct detail: Codable{
    var img: String?
    var description: String?
    var duration: Int?
}

struct bg: Codable{
    
    var gradient1: String?
    var gradient2: String?
}
