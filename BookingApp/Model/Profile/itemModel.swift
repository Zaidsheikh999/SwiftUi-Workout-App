//
//  itemModel.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 05/04/2023.
//

import Foundation


struct itemModel: Codable, Identifiable{

    var id =  UUID()
    var title:String?
    var icon:String? 
}
