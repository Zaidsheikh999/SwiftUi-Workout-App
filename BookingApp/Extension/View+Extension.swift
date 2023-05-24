//
//  View+Extension.swift
//  iOS Concurrency
//
//  Created by Mehran Khan on 22/11/2022.
//

import SwiftUI

extension View {
    func font(fontName: FontName = .regular, fontSize: FontSize = .size16) -> some View {
        self.font(Font.custom(fontName.rawValue, size: fontSize.rawValue))
    }
    
    /*
    func foregroundColor(_ foregroundColor: AppColors = .black) -> some View {
        self.foregroundColor(Color(foregroundColor.rawValue))
    }
    
    func bgStyle(_ backgroundColor: AppColors = .white) -> some View {
        self.background(Color(backgroundColor.rawValue))
    }
     */
    
    @ViewBuilder func `if`<Content: View>(_ condition: @autoclosure () -> Bool, transform: (Self) -> Content) -> some View {
        if condition() {
            transform(self)
        } else {
            self
        }
    }
    
    
    func frame(minW: CGFloat? = nil, idealW: CGFloat? = nil, maxW: CGFloat? = nil, minH: CGFloat? = nil, idealH: CGFloat? = nil, maxH: CGFloat? = nil, alignment: Alignment = .center, scaling: Bool = false) -> some View {
        self.frame(minWidth: minW, idealWidth: idealW, maxWidth: maxW, minHeight: minW, idealHeight: idealH, maxHeight: maxH, alignment: alignment)
    }
    
    func frame(w: CGFloat? = nil, h: CGFloat? = nil, alignment: Alignment = .center, scaling: Bool = false) -> some View {
        self.frame(width: w, height: h, alignment: alignment)
    }
    
    func padding(edges: Edge.Set = .all, _ length: CGFloat? = nil, scaling: Bool = false) -> some View {
        self.padding(edges, length)
    }
    
    public func endEditing(_ force: Bool) {
        UIApplication.shared.windows.forEach { $0.endEditing(force)}
    }
    
}

extension View {
    func hideNavigationBar() -> some View {
        modifier(HideNavigationBarModifier())
    }
}
