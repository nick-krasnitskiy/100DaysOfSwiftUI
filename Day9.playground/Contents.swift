import UIKit

var greeting = "Hello, playground"

// How to create and use closures

func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()


let sayHello = { print("Hi there!") }
sayHello()

let sayHello2 = { (name: String) -> String in
    "Hi \(name)!"
}

var greetCopy2: () -> Void = greetUser

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

sayHello2("Nick")

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

let captainFirstTeam2 = team.sorted { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}
print(captainFirstTeam2)

let payment = { (user: String) in
    print("Paing \(user)...")
}

payment("Nick")

let payment2 = { (user: String) -> Bool in
    print("Paing \(user)...")
    return true
}

payment2("Steve")

let payment3 = { () -> Bool in
    print("Paying an anonymous person…")
    return true
}

payment3()

// How to use trailing closures and shorthand syntax

let captainFirstTeam3 = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

let captainFirstTeam4 = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    
    return $0 < $1
}

let reverseTeam = team.sorted { $0 > $1 }

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

