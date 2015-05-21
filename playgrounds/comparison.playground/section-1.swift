// Comparison

import UIKit

1 == 1 // true, because 1 is equal to 1
2 != 1 // true, because 2 is not equal to 1
2 > 1 // true, because 2 is greater than 1
1 < 2 // true, because 1 is less than 2
1 >= 1 // true, because 1 is greater than or equal to 1
2 <= 1 // false, because 2 is not less than or equal to


var distance = 10 // in miles

if distance < 5 {
    println("\(distance) miles is near")
} else if distance >= 5 {
    println("\(distance) miles is close")
} else {
    println("\(distance) miles is far")
}



// && is the AND operator..both have to be true
// || is the OR operator..eitehr has to be true
// !  is the NOT operator

if true && true {
    println("AND")

}

if distance > 5 && distance < 20 {
    println("AND")
}

if distance < 5 || distance < 20 {
    println("OR")
}


// FizzBuzz

for s in 1...20 {
    if ( s % 3 == 0) && (s % 5 == 0 ) {
        println("FizzBuzz")
    } else if (s % 3 == 0) {
        println("Fizz")
    } else if (s % 5 == 0) {
        println("Buzz")
    } else {
        println(s)
    }
}
