//
//  URL+Extension.swift
//  CubixClientApp
//
//  Created by Kashif Khatri on 22/12/2022.
//

import Foundation

extension URL {
    var removeQuery: URL {
        if var components = URLComponents(string: absoluteString) {
            components.query = nil
            Log.debug("URL", components.url ?? self)
            return components.url ?? self
        } else {
            Log.debug("URL ELSE",  self)
            return self
        }
    }
}
