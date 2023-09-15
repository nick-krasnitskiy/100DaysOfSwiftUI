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

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

let scores = [1, 8, 4, 3, 0, 5, 2]
var count = 0

for score in scores {
    if score == 0 {
        break
    }
    
    count += 1
}

print("You had \(count) scores before you got 0.")

let options = ["up", "down", "left", "right"]

let secretCombination = ["up", "up", "right"]

outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attemp = [option1, option2, option3]
            
            if attemp == secretCombination {
                print("The combination is \(attemp)")
                break outerLoop
            }
        }
    }
}

