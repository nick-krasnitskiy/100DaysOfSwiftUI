import Cocoa

var greeting = "Hello, playground"

// Use type annotaions

let surname: String = "Lasso"
var score: Int = 0

var score2: Double = 0

let playerName: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthrnticated: Bool = true
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
username = "@twostraws"
// lots more complex logic
print(username)

var percentage: Double = 99
var name: String

let names = ["Eleanor", "Chidi", "Tahani", "Jianyu", "Michael", "Janet"]


