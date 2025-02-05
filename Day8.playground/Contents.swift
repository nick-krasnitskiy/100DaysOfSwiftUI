import UIKit

var greeting = "Hello, playground"

// How to provide default values for parameters

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) X \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.removeAll(keepingCapacity: true)
print(characters.count)

func findDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false) {
    // code here
}

findDirections(from: "London", to: "Glasgow")
findDirections(from: "London", to: "Glasgow", route: "scenic")
findDirections(from: "London", to: "Glasgow", route: "scenic", avoidHighways: true)
