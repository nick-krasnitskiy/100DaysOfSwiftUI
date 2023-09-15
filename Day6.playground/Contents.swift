import Cocoa

var greeting = "Hello, playground"

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os)")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1...12 {
    print("The \(i) times table:")
    
    for j in 1...12 {
        print("\(j) x \(i) is \(j * i)")
    }
    
    print()
}

for i in 1...5 {
    print("Counting 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 to 5: \(i)")
}

var lyric = "Hater gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for _ in names {
    print("[CENSORED] is a secret agent")
}

let namesTwo = ["Piper", "Alex", "Suzanne", "Gloria"]

print(namesTwo[0])
print(namesTwo[1...3])
print(namesTwo[1..<3])
print(namesTwo[1...])

