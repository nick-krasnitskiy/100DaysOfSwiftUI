import Cocoa

var greeting = "Hello, playground"

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

let goodDogs = true
let gameOver = false

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

var gameOverTwo = false
print(gameOverTwo)

gameOverTwo.toggle()
print(gameOverTwo)

let firstPart = "Hello, "
let secondPart = "world!"
let greetingTwo = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

let luggageCode = "1" + "2" + "3" + "4" + "5"

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old!"
print(message)

let numberTwo = 11
let missionMessage = "Appolo \(numberTwo) landed on the moon."

print("5 x 5 is \(5 * 5)")

var city = "Cardiff"
var messageTwo = "Welcome to \(city)"

let temperatureInCelsius = 30.0
let temperatureInFahrenheit = temperatureInCelsius * 9 / 5 + 32
print("Celsius: \(temperatureInCelsius) °C, Fahrenheit: \(temperatureInFahrenheit) °F")
