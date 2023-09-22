import Cocoa

var greeting = "Hello, playground"

func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()


let sayHello = { print("Hi there!") }
sayHello()

let sayHello2 = { (name: String) -> String in "Hi, \(name)" }

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

sayHello2("Taylor")

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

let captainFirstTeam2 = team.sorted(by: {(name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})

print(captainFirstTeam2)

let payment = { (user: String) in
    print("Paying \(user)...")
}

payment("Nick")

let payment2 = { (user: String) -> Bool in
    print("Paying \(user)...")
    return true
}

payment2("Donald")

let payment3 = { () -> Bool in
    print("Paying an anonymous person…")
    return true
}

payment3()

let team2 = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let capitanFirstTeam2 = team2.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    
    return $0 < $1
}

print(captainFirstTeam2)

let reverseTeam = team2.sorted { $0 > $1 }

let tOnly = team2.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team2.map { $0.uppercased() }
print(uppercaseTeam)

func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation...")
    animations()
}

animate(duration: 3) { print("Fade out of the image") }

func greetUser2() {
    print("Hi there!")
}

greetUser2()

var greetUser2Copy: () -> Void = greetUser2
greetUser2Copy()

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let rolls = makeArray(size: 50) { Int.random(in: 1...20) }
print(rolls)

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let rolls2 = makeArray(size: 50, using: generateNumber)
print(rolls2)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

