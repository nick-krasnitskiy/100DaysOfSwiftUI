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

var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blast off")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

// Create an integer to store our roll
var roll = 0

// Carry on looping until we reach 20
while roll != 20 {
    // Roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// If we're here it mean the loop ended - we got a 20!
print("Crirical hit!")
