// Struct

import UIKit

struct Contact {
    var firstName: String
    var lastName: String
}

var person = Contact(firstName: "Jon", lastName: "Smith")
person.firstName = "Tom"
person.lastName
