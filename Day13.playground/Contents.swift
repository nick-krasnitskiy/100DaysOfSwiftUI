import Cocoa
import Darwin

var greeting = "Hello, playground"

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance) km")
    }
    
    func openSunroof() {
        print("It's a nice day!")
    }
}

let car = Car()
commute(distance: 100, using: car)

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance) km")
    }
}

let bike = Bicycle()
commute(distance: 50, using: bike)

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance) km")
    }
}

getTravelEstimates(using: [car, bike], distance: 150)

struct Book {
    var name: String
}

func buy(_ book: Book) {
    print("I'm buying \(book.name)")
}

protocol Purchaseable {
    var name: String { get set }
}

struct Book2: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var authors: [String]
}

struct Car2: Purchaseable {
    var name: String
    var manufactor: String
}

struct Coffee: Purchaseable {
    var name: String
    var strenght: Int
}

func buy2(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
print(trimmed)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let trimmed2 = quote.trimmed()
print(trimmed2)

func trim(_ string: String) -> String {
    string.trimmingCharacters(in: .whitespacesAndNewlines)
}

let trimmed3 = trim(quote)
print(trimmed3)

quote.trim()

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)

struct Book3 {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

let lotr = Book3(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)

struct Book4 {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book4 {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isEmpty == false {
    print("Guest count: \(guests.count)")
}

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    var name: String
}

let taylor = Employee(name: "Taylor Swift!")
taylor.sayHello()

protocol Building {
    var rooms: Int { get }
    var cost: Int { get set }
    var agentName: String { get set }
    
    func getSummary()
}

struct House: Building {
    var rooms = 5
    
    var cost = 500_000
    
    var agentName = "Paul"
    
    func getSummary() {
        print("Summary: \(rooms) rooms, \(cost) $, agent \(agentName)")
    }
}


struct Office: Building {
    var rooms = 7
    
    var cost = 800_000
    
    var agentName = "Nick"
    
    func getSummary() {
        print("Summary: \(rooms) rooms, \(cost) $, agent \(agentName)")
    }
}
