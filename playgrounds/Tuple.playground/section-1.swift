// Tuples
// # hash tag means named parameter aka width width: 10

import UIKit

func searchNames (#name: String) -> (Bool, String) {
    let names = ["Amit", "Andrew", "Ben", "Craig", "Sam"]

    var found = (false, "\(name) is not a Teacher")

    for n in names {
        if n == name{
            found = (true, "\(name) is a Teacher)")
        }
    }

    return found
}

searchNames(name: "Sam")


//let result = searchNames(name: "Jon")

//result.0
//result.1


let (found, description) = searchNames(name: "Jon")
