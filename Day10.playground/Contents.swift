import UIKit

var greeting = "Hello, playground"

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary(){
        print("\(title) (\(year) by \(artist))")
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
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Opps! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

var archer1 = Employee(name: "Sterling Archer", vacationRemaining: 14)
var archer2 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)


// How to compute property values dynamically

struct Employee2 {
    let name: String
    var vacaitionRemaining: Int
}

var archer3 = Employee2(name: "Sterling Archer", vacaitionRemaining: 14)

archer3.vacaitionRemaining -= 5
print(archer3.vacaitionRemaining)

archer3.vacaitionRemaining -= 3
print(archer3.vacaitionRemaining)

struct Employee3 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer4 = Employee3(name: "Sterling Archer")

archer4.vacationTaken += 4
print(archer4.vacationRemaining)

archer4.vacationTaken += 4
print(archer4.vacationRemaining)

var archer5 = Employee3(name: "Sterling Archer")
archer5.vacationTaken += 4
archer5.vacationRemaining = 5
print(archer5.vacationAllocated)

// How to take action when a property changes

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
            print("There are now \(contacts.count) contacts")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")


