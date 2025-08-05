import Cocoa

var greeting = "Hello, playground"

// Create your own structs

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

struct Employee {
    let name: String
    var vacationRemaining = 14
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enouht days remainingю")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

var archer1 = Employee(name: "Sterling Archer", vacationRemaining: 14)
var archer2 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)

let kane = Employee(name: "Lana Kane")
let poovey = Employee(name: "Pam Poovey", vacationRemaining: 35)

// Compute propery values dynamically

struct Employee2 {
    let name: String
    var vacaionRemaining: Int
}

var archer3 = Employee2(name: "Sterlng Archer", vacaionRemaining: 14)
archer3.vacaionRemaining -= 5
print(archer3.vacaionRemaining)
archer3.vacaionRemaining -= 3
print(archer3.vacaionRemaining)

struct Employee4 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaing: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer4 = Employee4(name: "Sterling Archer", vacationAllocated: 14)

archer4.vacationTaken += 4
print(archer4.vacationRemaing)

archer4.vacationTaken += 4
print(archer4.vacationRemaing)

archer4.vacationRemaing = 5
print(archer4.vacationAllocated)

// Take action when a property changes

struct Game {
    var score = 0
}

var game = Game()

game.score += 10
print("Score is now \(game.score)")

game.score -= 3
print("Score is now \(game.score)")
game.score += 1

struct Game2 {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game2 = Game2()
game2.score += 10
game2.score -= 3
game2.score += 1

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Tsh S")

// Сreate custom initializers

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.number)

struct Employee5 {
    var name: String
    var yearActive = 0
}

let roslin = Employee5(name: "Laura Roslin")
let adama = Employee5(name: "Willian Adama", yearActive: 45)

struct Employee6 {
    var name: String
    var yearsActive = 0
    
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee...")
    }
}

struct Employee7 {
    var name: String
    var yearsActive = 0
}

extension Employee7 {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee...")
    }
}

// creating a named emloyee now works
let roslin2 =  Employee7(name: "Laura Roslin")

// as does creating an anonymous employee
let anon = Employee7()
