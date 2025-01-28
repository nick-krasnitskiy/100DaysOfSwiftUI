import UIKit

var greeting = "Hello, playground"

// How to store truth with Booleans

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(120.isMultiple(of: 3))

let goodDogs = true
let gameOver = false

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)

isAuthenticated = !isAuthenticated
print(isAuthenticated)

var gameOver2 = false
print(gameOver2)

gameOver2.toggle()
print(gameOver2)

// How to join strings together

let firstPart = "Hello, "
let secondPart = "world!"
let greeting2 = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

let luggageCode = "1" + "2" + "3" + "4" + "5"

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

let number2 = 11
let missionMessage = "Apollo" + String(number2) + " landed on the moon."
let missionMessage2 = "Apollo \(number2) landed on the moon."

print("5 x 5 is \(5 * 5)")

var city = "Cardiff"
var message2 = "Welcome to \(city)!"
