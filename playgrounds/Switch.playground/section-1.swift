// Playground - noun: a place where people can play

import UIKit

let cards = 1...13

for card in cards {
    switch card {
    case 11:
        println("Jack")
    case 12:
        println("Queen")
    case 13:
        println("King")
    default:
        println(card)
    }
}


for card in cards {
    switch card {
    case 1,11,12,13:
        println("Trump cards")
    default:
        println(card)
    }
}
