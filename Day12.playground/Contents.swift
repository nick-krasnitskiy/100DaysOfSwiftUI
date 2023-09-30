import Cocoa

var greeting = "Hello, playground"

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)

robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()

class Venicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Venicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)

class User {
    var username = "Anonymous"
}

var user1 = User()
var user2 = user1
user2.username = "Taylor Swift"

print(user1.username)
print(user2.username)

class User2 {
    var username = "Anonymous"
    
    func copy() -> User2 {
        let user = User2()
        user2.username = username
        return user
    }
}

class User3 {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = User3(id: i)
    print("User \(user.id): I'm in control!")
}

var users = [User3]()

for i in 1...3 {
    let user = User3(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear")

class User4 {
    var name = "Paul"
}

let user4 = User4()
user4.name = "Taylor"
print(user4.name)

class User5 {
    var name = "Paul"
}

var user5 = User5()
user5.name = "Taylor"
user5 = User5()
print(user5.name)
