//
//  TextFieldEditActions.swift
//  CubixClientApp
//
//  Created by Kashif Khatri on 25/11/2022.
//

import UIKit

/// All the text field editing actions with selector.
public enum KKTextFieldEditActions {
    case all
    case copy, paste, select, selectAll, delete, cut
    case decreaseSize, increaseSize
    case toggleItalics, toggleBoldface, toggleUnderline
    case makeTextWritingDirectionLeftToRight, makeTextWritingDirectionRightToLeft
    
    var selector: Selector {
        switch self {
        case .all:
            return #selector(UIResponderStandardEditActions.`self`)
        case .copy:
            return #selector(UIResponderStandardEditActions.copy)
        case .paste:
            return #selector(UIResponderStandardEditActions.paste)
        case .select:
            return #selector(UIResponderStandardEditActions.select)
        case .selectAll:
            return #selector(UIResponderStandardEditActions.selectAll)
        case .delete:
            return #selector(UIResponderStandardEditActions.delete)
        case .cut:
            return #selector(UIResponderStandardEditActions.cut)
        case .decreaseSize:
            return #selector(UIResponderStandardEditActions.decreaseSize)
        case .increaseSize:
            return #selector(UIResponderStandardEditActions.increaseSize)
        case .toggleItalics:
            return #selector(UIResponderStandardEditActions.toggleItalics)
        case .toggleBoldface:
            return #selector(UIResponderStandardEditActions.toggleBoldface)
        case .toggleUnderline:
            return #selector(UIResponderStandardEditActions.toggleUnderline)
        case .makeTextWritingDirectionLeftToRight:
            return #selector(UIResponderStandardEditActions.makeTextWritingDirectionLeftToRight)
        case .makeTextWritingDirectionRightToLeft:
            return #selector(UIResponderStandardEditActions.makeTextWritingDirectionRightToLeft)
        }
    }
}

/// To store the editing action which is not allowed the user to show..
public var arrTextFieldEditActions: [KKTextFieldEditActions] = []

extension UITextField {
    
    open override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        return false
//        if arrTextFieldEditActions.contains(where: {$0 == .all}) || arrTextFieldEditActions.contains(where: {$0.selector == action}) {
//            return false
//        }
//
//        return super.canPerformAction(action, withSender: sender)
    }
    
//    open override func target(forAction action: Selector, withSender sender: Any?) -> Any? {
//
//        if arrTextFieldEditActions.contains(where: {$0 == .all}) || arrTextFieldEditActions.contains(where: {$0.selector == action}) {
//            return nil
//        }
//
//        return super.target(forAction: action, withSender: sender)
//    }
}
