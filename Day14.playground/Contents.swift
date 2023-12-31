import Cocoa

var greeting = "Hello, playground"

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
    print("We got a user \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}

func getUsername() -> String? {
    "Taylor"
}

if let username = getUsername() {
    print("User name is \(username)")
} else {
    print("No username")
}

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Misiing input")
        return
    }
    
    print("\(number) X \(number) is \(number * number)")
}

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"
let new2 = captains["Serenity", default: "N/A"]

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favourite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input = ""
let number2 = Int(input) ?? 0
print(number2)

let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

struct Book2 {
    let title: String
    let author: String?
}

var book2: Book2? = nil
let author2 = book2?.author?.first?.uppercased() ?? "А"
print(author2)

func returnRandomItem(for items: [Int]?) -> Int { return items?.randomElement() ?? Int.random(in: 1...100)}


