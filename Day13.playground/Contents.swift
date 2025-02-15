import UIKit

var greeting = "Hello, playground"

// How to create and use protocols

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distanse: Int)
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distanse: Int) {
        print("I'm driving \(distanse) km.")
    }
    
    func openSunroof() {
        print("It's a nice day!")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distanse: distance)
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
    
    func travel(distanse: Int) {
        print("I'm cycling \(distanse) km.")
    }
}

let bike = Bicycle()
commute(distance: 50, using: bike)

func getTravetEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance) km")
    }
}

getTravetEstimates(using: [car, bike], distance: 150)

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
    var actors: [String]
}

struct Car2: Purchaseable {
    var name: String
    var manufacturer: String
}

struct Coffee: Purchaseable {
    var name: String
    var strenght: Int
}

func buy2(_ item: Purchaseable) {
    print("I'm biying \(item.name)")
}

// How to use opaque return types

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

// How to creeate and use extensions

var quote = "   The truth is rarely pure and never simple   "

let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
    
    
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
}

let trimmed2 = quote.trimmed()


func trim(_ string: String) -> String {
    string.trimmingCharacters(in: .whitespacesAndNewlines)
}


let trimmed3 = trim(quote)

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


extension Book3 {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

// How to create and use protocol extensions

let guests = ["Mario", "Luigi", "Peach"]

if !guests.isEmpty {
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
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()

// Checkpoint 8

protocol Building {
    var numberOfRooms: Int { get set }
    var cost: Int { get set }
    var nameOfAgent: String { get set }
    
    func summaryOfSales()
}

extension Building {
    func summaryOfSales() {
        print("The sales summary of the building is 50%")
        print("Number or rooms of the building: \(numberOfRooms)")
        print("Cost of building: \(cost) $")
        print("The name of the estate agent: \(nameOfAgent)")
    }
}

struct House: Building {
    var numberOfRooms: Int
    var cost: Int
    var nameOfAgent: String
}

struct Office: Building {
    var numberOfRooms: Int
    var cost: Int
    var nameOfAgent: String
}

let house = House(numberOfRooms: 5, cost: 50000, nameOfAgent: "Sara O'Neal")
let office = Office(numberOfRooms: 10, cost: 150000, nameOfAgent: "Jane Smith")


house.summaryOfSales()
office.summaryOfSales()
