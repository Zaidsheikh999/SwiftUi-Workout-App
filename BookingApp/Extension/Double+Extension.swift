//
//  Double+Extension.swift
//  CubixClientApp
//
//  Created by Mehran Khan on 25/11/2022.
//

import Foundation

extension Double {
    
    func rounded(digits: Int) -> Double {
        let multiplier = pow(10.0, Double(digits))
        return (self * multiplier).rounded() / multiplier
    }
}
