//
//  ProfileVM.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 05/04/2023.
//

import Foundation

class ProfileVM: ObservableObject{
    @Published var profile: [ProfileModel] = []
    @Published var item: [itemModel] = []
    
    init(){
        self.addData()
    }
    
    
    func addData(){
        profile = profileData
        item = itemData
    }
    
    
    let profileData = [ProfileModel(name: "Zaid", userImage: "user")]
    
    let itemData = [
        itemModel(title: "About us", icon: "i.circle"),
        itemModel(title: "Terms and Condition", icon: "book"),
        itemModel(title: "Privacy Policy", icon: "lock.shield"),
        itemModel(title: "Setting", icon: "transmission")
        
        ]
}
