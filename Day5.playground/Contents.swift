import Cocoa

var greeting = "Hello, playground"

let score = 85

if score > 80 {
    print("Great job!")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
}

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

// Make an array of 3 numbers
var numbers = [1, 2, 3]

// Add a 4th
numbers.append(4)

// If we have over 3 items
if numbers.count > 3 {
    // Removw the oldest number
    numbers.remove(at: 0)
}

// Display the result
print(numbers)

let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

let name = "Taylor Swift"

if name  != "Anonymous" {
    print("Welcome, \(name)!")
}

// Create the username variable
var username = "taylorswift13"

// If username contains an empty string
if username.isEmpty {
    // Make it equal to Anonymous
    username = "Anonymous"
}

// Now print a welcome message
print("Welcome, \(username)!")

let firstName = "Paul"
let secondName = "Sophie"

let firstAge = 40
let secondAge = 10

print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)

enum Sizes: Comparable {
    case small, medium, large
}

let first = Sizes.small
let second = Sizes.large

print(first < second)

let ageTwo = 16

if ageTwo >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}

let a = false
let b = true

if a {
    print("Code is run if a is true")
} else if b {
    print("Code is run if a is false but b is true")
} else {
    print("Code is run if both a and b are false")
}

let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day")
    }
}

if temp > 20 && temp < 30 {
    print("It's a nice day")
}

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

let scoreTwo = 9001

if scoreTwo > 9000 {
    print("It's over 9000!")
} else if scoreTwo == 9000 {
    print("It's exactly 9000!")
} else {
    print("It's not over 9000!")
}



enum Weather {
    case sun, rain, wind, snow, unkhown
}

let forecast = Weather.sun

if forecast == .sun {
    print("It should be a nice day")
} else if forecast == .rain {
    print("Pack an umbrella")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain {
    print("School is canceled")
} else {
    print("Our forecast generator is broken!")
}

switch forecast {
case .sun:
    print("It should be a nice day")
case .rain:
    print("Pack an umbrella")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is canceled")
case .unkhown:
    print("Our forecast generator is broken!")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

let day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

let ageThree = 18
let canVote = ageThree >= 18 ? "Yes" : "No"

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)

let isAuthenticated = true
print(isAuthenticated ? "Welcome" : "Who are you?")

if isAuthenticated {
    print("Welcome")
} else {
    print("Who are you?")
}
