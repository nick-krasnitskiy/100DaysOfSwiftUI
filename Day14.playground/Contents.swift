import Cocoa

var greeting = "Hello, playground"

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}

func getUsername() -> String? {
    "Taylor"
}

if let username = getUsername() {
    print("User name is \(username)")
} else {
    print("No username")
}

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Misiing input")
        return
    }
    
    print("\(number) X \(number) is \(number * number)")
}


