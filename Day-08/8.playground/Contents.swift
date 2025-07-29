import Cocoa

var greeting = "Hello, playground"

// Provide default values for parameters

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
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

findDirections(from: "London", to: "Glasgow")
findDirections(from: "London", to: "Glasgow", route: "scenic")
findDirections(from: "London", to: "Glasgow", route: "scenic", avoidHighways: true)


// Handle errors in functions

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
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}

do {
    let result2 = try checkPassword(string)
    print("Password rating: \(result2)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I tave the same combination on my luggage!")
} catch {
    print("There was an error.")
}

// Checkpoint 4

print("--- Checkpoint 4 ---")

enum NumberError: Error {
    case outOfBounds, noRoot
}


func squareRoot(for number: Int) throws -> Int {
    if number < 1 || number > 1000 {
        throw NumberError.outOfBounds
    }
    
    var root = 0
    
    for i in 1..<number {
        if i * i == number {
            root = i
            break
        } else {
            continue
        }
        
    }
    
    if root == 0 {
        throw NumberError.noRoot
    }
   
    return root
}

let number = 9

do {
    let root = try squareRoot(for: number)
    print(root)
} catch NumberError.outOfBounds {
    print("You number is less than 1 or greater than 10 000. Please, try again!")
} catch NumberError.noRoot {
    print("I can't find the square root of your number!")
} catch {
    print(error.localizedDescription)
}
