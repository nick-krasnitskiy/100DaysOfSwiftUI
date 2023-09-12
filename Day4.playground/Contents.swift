import Cocoa

var greeting = "Hello, playground"

let surname = "Lasso"
var score = 0

let surname2: String = "Lasso"
var score2: Int = 0

var score3: Double = 0

let playerName: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.14
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

var style = UIStyle.dark

let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)


let myArray = ["My", "name", "is", "Nick", "Nick"]
print(myArray.count)
print(Set(myArray).count)
