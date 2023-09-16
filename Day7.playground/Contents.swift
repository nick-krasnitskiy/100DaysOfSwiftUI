import Cocoa

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
