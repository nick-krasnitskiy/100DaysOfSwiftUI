//
//  ContentView.swift
//  Day20-GuessTheFlag
//
//  Created by Nick Krasnitskiy on 28.02.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var contries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var userScore = 0
    @State private var textMessage = ""
    @State private var questionCounter = 0
    
    @State private var angle = 0.0
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
           
            VStack {
                Spacer()
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .font(.subheadline.weight(.heavy))
                            .foregroundStyle(.secondary)
                        Text(contries[correctAnswer])
                            .prominentTitle()
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            FlagImage(name: contries[number])
                                .rotation3DEffect(.degrees(angle), axis: (0, 1, 0))
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                Text("Score: \(userScore)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text(textMessage)
        }
    }
    
    func flagTapped(_ number: Int) {
        angle += 360
        
        if number == correctAnswer {
            scoreTitle = "Correct"
            userScore += 1
            textMessage = "Your score is \(userScore)"
        } else {
            scoreTitle = "Wrong"
            userScore -= 1
            textMessage = "That’s the flag of \(contries[number])!"
        }
        
        showingScore = true
        questionCounter += 1
    }
    
    func askQuestion() {
        contries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        if questionCounter == 7 {
            questionCounter = 0
            userScore = 0
            contries.shuffle()
            correctAnswer = Int.random(in: 0...2)
        }
    }
 }

struct FlagImage: View {
    var name: String
    var body: some View {
        Image(name)
            .clipShape(.capsule)
            .shadow(radius: 5)
    }
}

struct ProminentTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.blue)
    }
}

extension View {
    func prominentTitle() -> some View {
        modifier(ProminentTitle())
    }
}

#Preview {
    ContentView()
}
