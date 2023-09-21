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

