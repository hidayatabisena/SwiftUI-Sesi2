import UIKit

// Tipe Data
// Variable & Constants
var greetingMessage: String = "Hello iOS Developer"
greetingMessage = "ini value baru"

// Constant
let greetingWelcomeMessage: String = "Hello, ios dev"

// String
var coffeeshopNames: String = "kopi surgawi"
print(coffeeshopNames.capitalized)
print(coffeeshopNames.uppercased())

print(coffeeshopNames.count)

var message: String = ""
if message.isEmpty {
    message = "Hi, I am not empty"
    print(message)
} else {
    print(message)
}

var password: String = "1234!pass"

if password.hasPrefix("123") {
    print("yes it contains 123")
}

if password.hasSuffix("pass") {
    print("yes that's correct")
}

// String Interpolation
var screenWidth: Int = 1900
var screenHeight: Int = 1440

print("My screen resolution \(screenWidth) x \(screenHeight)")

// Integer
var mySavings: Int = 200_000_000
print(mySavings)

// Double
var phi = 3.14

// Boolean
var isWeekend: Bool = true

if isWeekend {
    print("yes it is 😎")
} else {
    print("No it is not 🥲")
}

// Collection Types - Set, Dictionary, Array
var studentAge: [Int] = [17, 19, 22, 18]
var studentName: [String] = ["Steve", "Natasha", "Loki", "kate"]

print(studentAge[3])

var countries: [String] = ["Indonesia", "Korea", "Japan", "China", "Swiss", "Qatar"]

guard let firstValue = countries.first else { fatalError() }

print(firstValue)

guard let lastValue = countries.last else { fatalError() }

var contestant: [String] = []
if contestant.isEmpty {
    for element in countries {
        contestant.append(element)
    }
    
    print("new contestant: \(contestant.count) elements")
}

// add item to array countries
var country: String = "England"
countries.insert(country, at: 2)
print(countries)

// remove item from array countries
let removedCountry = countries.remove(at: 4)
print("This country \(removedCountry) has been removed")
print(countries)


// Operators
// Unary, Binary, Ternary
var isMonday: Bool = false
if !isMonday {
    print("no today is saturday")
}

// binary operator
var valueOne: Int = 16
var valueTwo: Int = 4

let result = valueOne + valueTwo
print(result)

// ternary operator
var contentHeight = 100
var header: Int = 0

let estimatedRowHeight = contentHeight + ((header != 0) ? 40 : 20)
print(estimatedRowHeight)

//if hasHeader {
//    estimatedRowHeight = contentHeight + 40
//} else {
//    estimatedRowHeight = contentHeight + 20
//}

// struct -> value types
// class -> reference types

struct Student {
    let studentID = UUID()
    let name: String
    var lastName: String
    
    init(name: String, lastName: String) {
        self.name = name
        self.lastName = lastName
    }
    
    func studentInfo() -> Student {
        return self
    }
}

var studentOne = Student(name: "Rana", lastName: "Aulia")
print(studentOne)
var studentTwo = studentOne
studentOne.lastName = "Modric"

let familyName = studentTwo.studentInfo()
print("Your family name is \(familyName.lastName)")


