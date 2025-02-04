import UIKit

var greeting = "Hello, playground"

// How to reuse code with functions

print("Welcome to my app!")
print("By default This prints out a conversion")
print("chart from centimeters to inches, but you")
print("can also set a custom range if you want.")

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()

let number = 129

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}

let roll = Int.random(in: 1...20)

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) X \(number) is \(i * number)")
    }
}
    
printTimesTables(number: 5, end: 20)

// How to return values from functions

let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}

func areLettersIdentical2(string1: String, string2: String) -> Bool {
   string1.sorted() == string2.sorted()
}

func rollDice2() -> Int {
    Int.random(in: 1...6)
}

func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)

func pythagoras2(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let d = pythagoras2(a: 3, b: 4)
print(d)

func greet(name: String) -> String {
    let response = name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
    return response
}

print(greet(name: "Nick"))
print(greet(name: "Taylor Swift"))

// How to return multiple values from functions

func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print("Name: \(user[0]) \(user[1])")

func getUser2() -> [String: String] {
    [
        "firstname": "Taylor",
        "lastname": "Swift"
    ]
}

let user2 = getUser2()
print("Name: \(user2["firstname", default: "Anonymous"]) \(user2["lastname", default: "Anonymous"])")


func getUser3() -> (firstname: String, lastname: String) {
    ("Taylor", "Swift")
}

let user3 = getUser3()
print("Name: \(user3.firstname) \(user3.lastname)")

func getUser4() -> (String, String) {
    ("Taylor", "Swift")
}

let user4 = getUser4()
print("Name: \(user4.0) \(user4.1)")

let firstname = user3.firstname
let lastname = user3.lastname
print("Name: \(firstname) \(lastname)")

let (firstname2, lastname2) = getUser3()
print("Name: \(firstname2) \(lastname2)")

let (firstname3, _) = getUser3()
print("Name: \(firstname3)")

// How to customize parameter labels

func rollDice3(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()
    
    // Roll as many dice as needed
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    // Send back all the rolls
    return rolls
}

let rolls = rollDice3(sides: 6, count: 4)

let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))

func isUppercase2(string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO WORLD"
let result2 = isUppercase2(string: string)

func isUppercase3(_ string: String) -> Bool {
    string == string.uppercased()
}

let result3 = isUppercase3(string)

func printTimesTables2(number: Int) {
    for i in 1...12 {
        print("\(i) X \(number) is \(i * number)")
    }
}

printTimesTables2(number: 5)

func printTimesTable3(for number: Int) {
    for i in 1...12 {
        print("\(i) X \(number) is \(i * number)")
    }
}

printTimesTable3(for: 5)

