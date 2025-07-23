import Cocoa

var greeting = "Hello, playground"

// Use a for loop to repeat work

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

for name in platforms {
    print("Swift works great on \(name).")
}

for platform in platforms {
    print("Swift works great on \(platform).")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1...12 {
    print("The \(i) times table:")
    
    for j in 1...12 {
        print(" \(j) x \(i) is \(j * i)")
    }
    
    print()
}

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for name in names {
    print("\(name) is a secret agent")
}

for _ in names {
    print("[CENSORED] is a secret agent!")
}

let names2 = ["Piper", "Alex", "Suzanne", "Gloria"]

print(names2[0])
print(names2[1...3])

print(names2[1...])

// Use a while loop to repeat work

var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blast off!")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

// create an integer to srore our roll
var roll = 0

// carry on looping untill we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended - we got a 20!
print("Critical hit!")
