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
