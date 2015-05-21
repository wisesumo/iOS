//
//  ColorWheel.swift
//  FunnyFacts
//
//  Created by Sam Bowen on 1/29/15.
//  Copyright (c) 2015 CodeSling. All rights reserved.
//

import Foundation
import UIKit

struct ColorWheel {
    let colorsArray = [
        UIColor(red: 90/225.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0), // teal color
        UIColor(red: 222/225.0, green: 171/255.0, blue: 66/255.0, alpha: 1.01), // yellow color
        UIColor(red: 223/255.0, green: 86/255.0, blue: 66/255.0, alpha: 1.0), // red color
        UIColor(red: 239/225.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0), // orange color
        UIColor(red: 77/225.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0), //dark color
        UIColor(red: 105/225.0, green: 94/255.0, blue: 133/255.0, alpha: 1.0), // purple color
        UIColor(red: 85/225.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0) // green color
    ]

    func randomColor() -> UIColor {
        var unsignedArrayCount = UInt32(colorsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)

        return colorsArray[randomNumber]
    }
}