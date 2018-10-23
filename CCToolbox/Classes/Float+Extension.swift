//
//  Float+Extension.swift
//  Pods
//
//  Created by Kevin Tallevi on 8/21/17.
//
//

import Foundation

extension Float {
    public func truncate(numberOfDigits: Int) -> Float {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = numberOfDigits
        formatter.roundingMode = NumberFormatter.RoundingMode.down
        var truncatedValue = formatter.string(from: NSNumber(value: self))
        truncatedValue = truncatedValue?.replacingOccurrences(of: ",", with: ".") //ana added this
        return Float(truncatedValue!)!
    }
}
