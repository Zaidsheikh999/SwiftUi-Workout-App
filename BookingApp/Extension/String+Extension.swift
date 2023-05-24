//
//  String+Extension.swift
//  CubixClientApp
//
//  Created by Kashif Khatri on 08/12/2022.
//

import Foundation

extension String {
    func toDate(_ format: DateFormatType = .isoDate) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format.stringFormat
        let date = dateFormatter.date(from: self)
        return date
    }
}
