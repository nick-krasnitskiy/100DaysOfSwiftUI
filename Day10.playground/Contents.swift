import Cocoa

var greeting = "Hello, playground"

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) \(year) by \(artist)")
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
    var vacationRemaning: Int = 14
    
    mutating func takeVacation(days: Int) {
        if vacationRemaning > days {
            vacationRemaning -= days
            print("I'm going on vacation!")
            print("Days remaning: \(vacationRemaning)")
        } else {
            print("Opps! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaning: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaning)

var archer1 = Employee(name: "Sterling Archer", vacationRemaning: 14)
var archer2 = Employee.init(name: "Sterling Archer", vacationRemaning: 14)

var archer3 = Employee(name: "Sterling Archer")
print(archer3.vacationRemaning)

struct Employee2 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacatopnRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated  = vacationTaken + newValue
        }
    }
}

var archer4 = Employee2(name: "Sterling Archer", vacationAllocated: 14)
archer4.vacationTaken += 4
print(archer4.vacatopnRemaining)
archer4.vacationTaken += 4
print(archer4.vacatopnRemaining)

var archer5 = Employee2(name: "Sterling Archer", vacationAllocated: 14)
archer5.vacationTaken += 4
print(archer5.vacatopnRemaining)
archer5.vacatopnRemaining = 5
print(archer5.vacationAllocated)

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

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
app.contacts.append("Ish S")

struct Player {
    let name: String
    let number: Int
}

let player = Player(name: "Megan R", number: 15)

struct Player2 {
    let name: String
    let number: Int
    
    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}

let player2 = Player2(name: "Megan R", number: 17)

struct Player3 {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player3 = Player3(name: "Megan R")
print(player3.number)

struct User {
    var name: String
    var yearsActive = 0
}

let roslin = User(name: "Laura Roslin")
print(roslin.yearsActive)

let adama = User(name: "William Adama", yearsActive: 45)
print(adama.yearsActive)

struct User2 {
    var name: String
    var yearsActive = 0
    
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous user...")
    }
}

let roslin2 = User2()
print(roslin2.name)
print(roslin2.yearsActive)


struct User3 {
    var name: String
    var yearsActive = 0
}

extension User3 {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous user...")
    }
}

// as does creating an anonymous user
let roslin3 = User3()
print(roslin3.name)
print(roslin3.yearsActive)

// creating a named user now works
let roslin4 = User3(name: "Megan R")
print(roslin4.name)
print(roslin4.yearsActive)

// creating a named user also now works
let roslin5 = User3(name: "Megan R", yearsActive: 45)
print(roslin5.name)
print(roslin5.yearsActive)

struct Student {
    var name: String
    var bestFriend: String
    
    init(name: String, bestFriend: String) {
        print("Enrolling \(name) in class…")
        self.name = name
        self.bestFriend = bestFriend
    }
}

struct Student2 {
    var name: String
    var bestFriend: String
    
    init(name studentName: String, bestfriend studentBestFriend: String) {
        print("Enrolling \(studentName) in class...")
        name = studentName
        bestFriend = studentBestFriend
    }
}
