import UIKit

var greeting = "Hello, playground"

// How to limit access to internal data using access control

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

let succes = account.withdraw(amount: 200)

if succes {
    print("Withdrew money sucessfully")
} else {
    print("Failed to get the money")
}

// account.funds -= 100

// Static properties and methods

struct AppData {
    static let version = "1.3 beta 2"
    static let filename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

// Checkpoint 6

struct Car {
    let model: String
    let numberOfSeats: Int
    var currentGear: Int
    
    mutating func changeGears() {
        currentGear += 1
    }
}

var car = Car(model: "BMV", numberOfSeats: 5, currentGear: 3)
car.changeGears()
print(car.currentGear)
