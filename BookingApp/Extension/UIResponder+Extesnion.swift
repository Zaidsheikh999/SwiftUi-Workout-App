//
//  UIResponder+Extesnion.swift
//  CubixClientApp
//
//  Created by Kashif Khatri on 25/11/2022.
//

import SwiftUI

// From https://stackoverflow.com/a/14135456/6870041
extension UIResponder {
    static var currentFirstResponder: UIResponder? {
        _currentFirstResponder = nil
        UIApplication.shared.sendAction(#selector(UIResponder.findFirstResponder(_:)), to: nil, from: nil, for: nil)
        return _currentFirstResponder
    }
    
    private static weak var _currentFirstResponder: UIResponder?
    
    @objc private func findFirstResponder(_ sender: Any) {
        UIResponder._currentFirstResponder = self
    }
    
    var globalView: UIView? {
        return self as? UIView
    }
}
