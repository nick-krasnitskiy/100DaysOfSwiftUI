import Cocoa
import Darwin

var greeting = "Hello, playground"

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can set a custom range if you want.")
}

showWelcome()

let number = 139

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}

let roll = Int.random(in: 1...20)

func printTimesTable(number: Int) {
    for i in 1...12 {
        print("\(i) * \(number) = \(i * number)")
    }
}

printTimesTable(number: 5)

func printTimesTableTwo(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) = \(i * number)")
    }
}

printTimesTableTwo(number: 5, end: 20)

let root = sqrt(169)
print(root)

func rollDice() -> Int {
    Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

print(pythagoras(a: 3, b: 4))

func doMath() -> Int {
    return 5 + 5
}

func doMoreMath() -> Int {
    5 + 5
}

func greet(name: String) -> String {
    if name == "Taylor Swift" {
        return "Oh wow!"
    } else {
        return "Hello, \(name)"
    }
}
func greetTwo(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow" : "Hello, \(name)"
}

func inUppercase(string: String) -> Bool {
    string == string.uppercased()
}

func getUser() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

func getUserTwo() -> (String, String) {
    ("Taylor", "Swift")
}

let userTwo = getUserTwo()
print("Name: \(userTwo.0) \(userTwo.1)")

let firstName = user.firstName
let lastName = user.lastName

print("Name: \(firstName) \(lastName)")

let (firstName2, lastName2) = getUser()
print("Name: \(firstName2) \(lastName2)")

let (firstName3, _) = getUser()
print("Name: \(firstName3)")

func rollDice(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()
    
    // Roll as many dice as needed
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    // Send back all the rolls
    return rolls
}
 
let rolls = rollDice(sides: 6, count: 4)

let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))
 
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
print(isUppercase(string))

func printTimesTablesTwo(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTablesTwo(for: 5)
