//
//  TextWithImage.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 03/04/2023.
//

import SwiftUI

struct TextWithImage: View {
    
    let text1: String
    var text2: String?
    var image: String = "RightArrow"
    var fontName: FontName = FontName.textBold
    var fontSize: FontSize = FontSize.size12
    var fontName2: FontName = FontName.regular
    var fontSize2: FontSize = FontSize.size12
    var spacing: Double = 10
    var action: (() -> Void)?
    
    var body: some View {
        
        Group {
            if action != nil {
                Button(action: action!, label: { content })
            } else {
                content
            }
        }
    }
    
    private var content: some View {
        
        HStack(alignment: .center, spacing: 0) {
            Text(text1)
                .font(fontName: fontName, fontSize: fontSize)
                .foregroundColor(.gray)
            if let text2 = text2 {
                Text(text2)
                    .font(fontName: fontName2, fontSize: fontSize2)
                    .foregroundColor(.gray)
                    .padding(edges: .leading, spacing)
                    .padding(edges: .trailing, 0)
            }
            Image(image)
                .frame(w: 5, h: 9)
                .padding(edges: .leading, spacing)
            
        }
    }
}
//struct TextWithImage_Previews: PreviewProvider {
//    static var previews: some View {
//        TextWithImage()
//    }
//}
