//
//  HideNavigationBarModifier.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 03/04/2023.
//

import SwiftUI

struct HideNavigationBarModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true)
    }
}


