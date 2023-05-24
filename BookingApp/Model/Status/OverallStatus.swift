//
//  OverallStatus.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 06/04/2023.
//

import Foundation

struct OverallStatus: Identifiable, Codable{
    var id = UUID()
    var step: String?
    var calorieBurn: String?
    var heartBeat: String?

}
