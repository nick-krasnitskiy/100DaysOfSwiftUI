import UIKit

var greeting = "Hello, playground"

// How to handle missing data with optionals

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let number {
    print(square(number: number))
}

// How to unwrap optionals with guard

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        
        // 1: We must exit the function here
        return
    }
    
    // 2: number exit the function here
    print("\(number) X \(number) is \(number * number)")
}

var myVar: Int? = 3

if let unwrapped = myVar {
    print("Run if myVar has a value inside")
}

func getMeaningOfLife() -> Int? {
    42
}

func printMeaningOfLife() {
    if let name = getMeaningOfLife() {
        print(name)
    }
}

func printMeaningOfLife2() {
    guard let name = getMeaningOfLife() else {
        return
    }
    
    print(name)
}
