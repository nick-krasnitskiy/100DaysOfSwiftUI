import Cocoa

var greeting = "Hello, playground"

// Create your own classes

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

// Make one class inherit from another

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

robert.printSummary()

// Add initializers for classes

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)

// Copy classes

class User {
    var username = "Anonymous"
}

var user1 = User()
var user2 = user1
user2.username = "Taylor"

print(user2.username)
print(user1.username)

class User3 {
    var username = "Anonymous"
    
    func copy() -> User3 {
        let user = User3()
        user.username = username
        return user
    }
}

let user3 = User3()
let user4 = user3.copy()
user3.username = "Taylor"

print(user3.username)
print(user4.username)

// Create deinitializer for a class

class User5 {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}

var users = [User5]()

for i in 1...3 {
    let user = User5(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")

// Work with variables inside classes

class User6 {
    var name = "Paul"
}

let user6 = User6()
user6.name = "Taylor"
print(user6.name)

class User7 {
    var name = "Paul"
}

var user7 = User7()
user7.name = "Taylor"
user7 = User7()
print(user7.name)

// Checkpoint 7

class Animal {
   let legs = 4
}

class Dog: Animal {
    
    func speak() {
        print("Bark!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Bark! I'm Corgi!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Bark! I'm Poodle!")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
    }
    
    func speak() {
        print("Mayo!")
    }
}

class Persian: Cat {
    override func speak() {
        print("Mayo! I'm Persian!")
    }
}

class Lion: Cat {
    override func speak() {
        print("Mayo! I'm Lion!")
    }
}

let persian = Persian(isTame: true)
print(persian.legs)
