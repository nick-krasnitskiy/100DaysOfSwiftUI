import Cocoa

var greeting = "Hello, playground"

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)

func findDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false) {
    // code here
}

findDirections(from: "Moscow", to: "Moscow")
findDirections(from: "Moscow", to: "Moscow", route: "scenic")
findDirections(from: "Moscow", to: "Moscow", route: "scenic", avoidHighways: true)

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "GOOD"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error!")
}


enum RootError: Error {
    case outOfBounds, noRoot
}

func squareRootInteger(_ number: Int) throws -> Int {
    
    guard number > 1 && number < 10000 else { throw RootError.outOfBounds }
    
    var result = 0
    
    for root in 1...100 {
        if number == root * root {
            result = root
        } else {
            continue
        }
    }
    
    guard result != 0 else { throw RootError.noRoot }
    
    return result
   
}

do {
    let result = try squareRootInteger(49)
    print(result)
} catch RootError.outOfBounds {
    print("Your number is out of bounds!")
} catch RootError.noRoot {
    print("I can't fing the integer root of your number!")
}
