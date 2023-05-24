//
//  Array+Utility.swift
//  CubixClientApp
//
//  Created by Kashif Khatri on 05/12/2022.
//

import UIKit

// MARK: - Array Extnsion for Equatable
public extension Array where Element: Equatable {
    
    /// Removes object from the array with validation of availablity
    ///
    /// - Parameter object: Element to delete
    mutating func removeObject(_ object: Element) {
        if let index = self.firstIndex(of: object) {
            self.remove(at: index)
        }
    } //F.E.
    
    /// Removes array elemets form the array
    ///
    /// - Parameter array: Elements of array to delete
    mutating func removeObjectsInArray(_ array: [Element]) {
        for object in array {
            self.removeObject(object)
        }
    } //F.E.
} //E.E.
