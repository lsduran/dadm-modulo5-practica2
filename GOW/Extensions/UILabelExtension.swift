//
//  UILabelExtension.swift
//  GOW
//
//  Created by Luis Sergio Duran Arenas on 12/08/23.
//

import Foundation
import UIKit

extension UILabel {
    func customFont(fontFamily : String, fontSize : Int, fontStyle : UIFont.TextStyle) {
        let myFont = UIFont(name: fontFamily, size: CGFloat(fontSize))
        let bodyMetrics = UIFontMetrics(forTextStyle: fontStyle)
        self.font = bodyMetrics.scaledFont(for: myFont ?? UIFont.systemFont(ofSize: CGFloat(fontSize)))
    }
}
