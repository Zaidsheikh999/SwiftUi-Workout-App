//
//  Date+.swift
//  PodcastApp
//
//  Created by Temiloluwa on 13/11/2022.
//

import Foundation

extension Date {
    
    func toString() -> String {
        
        return Log.dateFormatter.string(from: self as Date)
    }
    
    func format(_ format: String = "d MM yyyy") -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.locale = .autoupdatingCurrent
        let component = formatter.string(from: self)
        return component
    }
}

extension Date {
    func stringFromDate(_ format: DateFormatType = .isoDate) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format.stringFormat
        let date = dateFormatter.string(from: self)
        return date
    }
}
