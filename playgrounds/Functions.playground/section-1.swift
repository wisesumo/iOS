// Functions

import UIKit

// func calculateArea(height: Int, width: Int) {
   // let area = height * width
    //println("The area of the room is \(area)")
//}

// calculateArea(1000, 100)


func calculateArea(height: Int, width: Int) -> Int {
    return height * width
}

println("Area = \(calculateArea(1000, 100) )")


func greeting(person: String) -> String {
    return "Hello \(person)"
}


func calculateArea(#height: Int, #width: Int) -> Int {
    return height * width
}

println("Area =\(calculateArea(height: 10, width: 12))")
