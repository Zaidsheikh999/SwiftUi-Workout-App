//
//  Collection.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 04/04/2023.
//

import Foundation
import SwiftUI

struct Collection: Identifiable, Codable{
    var id = UUID()
    var title: String?
    var exerciseCount: String?
    var rating: String?
    var bannerImage: String?
    var gradient1: String?
    var gradient2:String?
    
}
