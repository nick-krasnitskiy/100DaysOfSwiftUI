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
