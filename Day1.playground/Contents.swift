// How to create variables and constants

import UIKit

var greeting = "Hello, playground"

var name = "Ted"
name = "Rebecca"
name = "Keeley"

let character = "Daphne"
// character = "Elloise" - we can't change constants

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

let managerName = "Michael Skott"
let dogBreed = "Samoed"
let meaningOfLife = "How many roads must a man walk down?"

var favoriteShow = "Orange is the New Black"
favoriteShow = "The Good Place"
favoriteShow = "Doctor Who"


// How to create strings

let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐️You win!⭐️"
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let movie = """
A day in
the life of an
Apple engineer
"""

print(actor.count)

let nameLenght = actor.count
print(nameLenght)

print(result.uppercased())
print(movie.hasPrefix("A day"))
print(filename.hasSuffix(".jpg"))

var quoteTwo = "Change the world by being yourself"
var burns = """
The best laid schemes
O’ mice and men
Gang aft agley
"""

// How to store whole numbers

let score = 10
let reallyBig = 100_000_000
let reallyBigTwo = 1__000__000___000

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

print(score)

var counter = 10
counter = counter + 5

counter += 5
print(counter)

counter *= 2
print(counter)

counter -= 10
print(counter)

counter /= 2
print(counter)

let number = 120
print(number.isMultiple(of: 3))

print(120.isMultiple(of: 3))


