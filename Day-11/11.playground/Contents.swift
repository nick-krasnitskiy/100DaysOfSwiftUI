import Cocoa

var greeting = "Hello, playground"

// Limit access to internal data using access control

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)

let sucess = account.withdraw(amount: 200)

if sucess {
    print("Withdrew money sucessfully")
} else {
    print("Failed to get the money")
}

// account.funds -= 100

// Static properties and methods

struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

struct Unwrap {
    static let appURL = "https://itunes.apple.com/app/id1440611372"
}

// Checkpoint 6

struct Car {
    let model: String
    let numberOfSeats: Int
    private var currentGear: Int
    
    mutating func changeGear() {
        currentGear += 1
        print(currentGear)
    }
    
    init(model: String, numberOfSeats: Int, currentGear: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.currentGear = currentGear
    }
}

var car = Car(model: "Tesla", numberOfSeats: 4, currentGear: 5)
print(car.model)
print(car.numberOfSeats)
car.changeGear()
