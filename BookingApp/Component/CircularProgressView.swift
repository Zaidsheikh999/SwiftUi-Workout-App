//
//  CircularProgressView.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 04/04/2023.
//

import Foundation
import SwiftUI

struct CircularProgressView: View {
    var progress: Double
    var textColor: Color?
    var fontSize: CGFloat?
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 4.0)
                .foregroundColor(Color.gray)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 4.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(.invoicePaidBgColor)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)

            Text("\(Int(self.progress))%")
                .font(.system(size: fontSize ?? 12, weight: .semibold,design: .default))
                .foregroundColor(textColor)
        }
    }
}
