//
//  StringExtension.swift
//  GOW
//
//  Created by Luis Sergio Duran Arenas on 11/08/23.
//

import Foundation

extension String {
    var localized: String{
        return NSLocalizedString(self, comment: "")
    }

    func localized(withComment comment : String) -> String {
        return NSLocalizedString(self, comment: comment)
    }
}
