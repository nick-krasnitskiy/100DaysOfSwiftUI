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
