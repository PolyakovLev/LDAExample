//
//  LDARandomColor.swift
//  Alamofire
//
//  Created by UGORETS Maria on 29/11/2019.
//

import Foundation

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    public func randomColor() -> UIColor {
        return UIColor(red: .random(), green: .random(), blue:  .random(), alpha: .random())
    }
}
