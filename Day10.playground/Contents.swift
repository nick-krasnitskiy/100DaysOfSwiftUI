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
