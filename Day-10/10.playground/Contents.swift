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
