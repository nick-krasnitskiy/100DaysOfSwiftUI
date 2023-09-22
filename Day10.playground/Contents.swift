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
