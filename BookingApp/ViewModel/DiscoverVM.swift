//
//  DiscoverVM.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 04/04/2023.
//

import Foundation

class DiscoverVM: ObservableObject{
    @Published var popular: [Popular] = []
    @Published var collection:[Collection] = []
    
    init(){
        addData()
    }
    
    func addData(){
       popular = popularData
       collection = collectionData
    }
    
    let popularData = [
                Popular(title: "Home Workout",exerciseCount: "12",rating: "4.9", bannerImage: "banner1"),
                Popular(title: "Hand Exercise",exerciseCount: "11",rating: "4.8", bannerImage: "banner2"),
                Popular(title: "Chest Exercise",exerciseCount: "11",rating: "4.8", bannerImage: "banner3")
            ]
    
    let collectionData = [
        Collection(title: "Chest and Abidonminal Exercise",exerciseCount: "12",rating: "4.9", bannerImage: "banner2",gradient1: "inProgressBg",gradient2: "invoiceUnpaidText"),
        Collection(title: "Back and Shoulder Exercise",exerciseCount: "12",rating: "4.9", bannerImage: "banner1", gradient1: "todoText", gradient2: "backlogText")
    ]
    
    
}
