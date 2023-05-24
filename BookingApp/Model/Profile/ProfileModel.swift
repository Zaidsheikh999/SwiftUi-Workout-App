//
//  ProfileModel.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 05/04/2023.
//

import Foundation

struct ProfileModel: Identifiable, Codable{
    
    var id = UUID()
    var name: String?
    var userImage: String?
    
}

