// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var highScore = 100
highScore = highScore + 50

for i in 0..<100 {
    highScore = highScore + 1
}

highScore

//this is string interpolation (cmd + /)
// another comment line 

let city = "Atlanta"
var day = "Friday"
var temp = 75

"The high for \(city) on \(day) is \(temp) degrees."