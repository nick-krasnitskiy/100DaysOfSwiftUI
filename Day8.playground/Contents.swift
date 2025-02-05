import UIKit

var greeting = "Hello, playground"

// How to provide default values for parameters

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) X \(number) is \(i * number)")
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

// How to handle errors in functions

// Step 1. Telling Swift about the possible errors that can happen. It doesn’t define what those mean, only that they exist.

enum PasswordError: Error {
    case short, obvious
}

// Step 2. Write a function that will trigger one of those errors.When an error is triggered – or thrown in Swift – we’re saying something fatal went wrong with the function, and instead of continuing as normal it immediately terminates without sending back any value. In our case, we’re going to write a function that checks the strength of a password.

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

// Step 3. Run the function and handle any errors that might happen.

// Starting a block of work that might throw errors, using do.
// Calling one or more throwing functions, using try.
// Handling any thrown errors using catch.

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Pleasure use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print(error.localizedDescription)
}

// Checkpoint 4

enum NumberError: Error {
    case outOfBounds, noroot
}

func calculateRoot(of number: Int) throws -> Int {
    
    if number < 1 || number > 1000  {
        throw NumberError.outOfBounds
    } else {
        for i in 0...number {
            if i * i == number {
                return i
            } else {
                continue
            }
        }
        throw NumberError.noroot
    }
}

do {
    let result = try calculateRoot(of: 81)
    print("The root is: \(result)")
} catch NumberError.outOfBounds {
    print("The number is less than 1 or greater than 10,000. Please, try again!")
} catch NumberError.noroot {
    print("The square root is not finded!")
}
