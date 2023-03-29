//
//  UIColour+Ext.swift
//  RandomColours
//
//  Created by Dru Mumba on 29/03/2023.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        let randomColour = UIColor(red: CGFloat.random(in: 0...1),
                                   green: CGFloat.random(in: 0...1),
                                   blue: CGFloat.random(in: 0...1),
                                   alpha: 0.3)
        return randomColour
    }
}
