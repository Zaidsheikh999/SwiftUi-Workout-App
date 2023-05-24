//
//  Tutorial.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 06/04/2023.
//

import SwiftUI

struct Tutorial: View {
    var body: some View {
        ZStack(){
            LinearGradient(gradient: Gradient(colors: [.gray , .black]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
        }
    }
}

struct Tutorial_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial()
    }
}
