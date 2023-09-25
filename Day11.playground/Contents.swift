import Cocoa

var greeting = "Hello, playground"

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
    print("Withdrew sucessfully")
} else {
    print("Failed to get the money")
}

struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school")
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

print(Employee.example)

struct Unwrap {
    static let appURL = "https://itunes.apple.com/app/id1440611372"
    private static var enthropy = Int.random(in: 1...1000)

    static func gerEnthropy() -> Int {
        enthropy += 1
        return enthropy
    }
}

