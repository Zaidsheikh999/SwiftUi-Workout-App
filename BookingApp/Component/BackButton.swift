//
//  BackButton.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 04/04/2023.
//

import SwiftUI

struct BackButton: View {
    
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Image("back") // set image here
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 25, height: 44, alignment: .leading)
        })
    }
}
