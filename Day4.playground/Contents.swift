import UIKit

var greeting = "Hello, playground"

// How to use type annotations

let surname: String = "Lasso"
let score: Double = 0

let playerName: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthenticated: Bool = true

var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]

var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark

let username: String
// lots of complex logic
username = "@twwostraws"
// lots more complex logic
print(username)

// let score2: Int = "Zero"

// Checkpoint 2

let names = ["Nick", "Steve", "Alex", "Ivan", "Alex"]
print(names.count)
print(Set(names).count)

