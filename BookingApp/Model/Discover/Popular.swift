//
//  Discover.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 04/04/2023.
//

import Foundation

struct Popular: Identifiable, Codable {
    var id = UUID()
    var title: String?
    var exerciseCount: String?
    var rating: String?
    var bannerImage: String?
    
}
