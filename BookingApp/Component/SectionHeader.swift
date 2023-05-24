//
//  SectionHeader.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 03/04/2023.
//

import SwiftUI

struct SectionHeader: View {
    
    let title: String
    var rightText: String?
    var onRightPress: (() -> Void)?
    
    var body: some View {
        HStack {
            Text(title)
//                .font(fontName: .heavy, fontSize: .size18)
                .font(.system(size: 18, weight: .bold, design: .default))
                .foregroundColor(.blackWhite)
            
            Spacer()
            
            if let rightText = rightText {
                TextWithImage(text1: rightText, fontName: .textMedium, fontSize: .size14, spacing: 5, action: onRightPress)
            }
        }
    }
}


//struct SectionHeader_Previews: PreviewProvider {
//    static var previews: some View {
//        SectionHeader()
//    }
//}
