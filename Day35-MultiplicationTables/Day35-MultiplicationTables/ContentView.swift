//
//  ContentView.swift
//  Day35-MultiplicationTables
//
//  Created by Nick Krasnitskiy on 07.04.2025.
//

import SwiftUI

struct ContentView: View {
    let numberOfQuestions = [5, 10, 20]
    
    @State private var selectedNumberOfQuestions = 5
    @State private var multiplicationTable = 2
    @State private var multiplicationNumber =  Int.random(in: 1...12)
    @State private var answer: Int? = nil
    
    @State private var questionCount = 1
    @State private var score = 0
    @State private var isGameOver = false
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Which multiplication table do you want to practice?")
            Stepper("\(multiplicationTable) multiplication table ", value: $multiplicationTable, in: 2...12)
                .padding()
            
            Text("How many questions do you want to be asked?")
            
            Picker("Questions", selection: $selectedNumberOfQuestions)  {
                ForEach(numberOfQuestions, id: \.self) {
                    Text("\($0)")
                }
            }
            .pickerStyle(.segmented)
            
            Text("What is \(multiplicationTable) x \(multiplicationNumber)?")
            
            TextField("Your answer", value: $answer, format: .number)
                .padding(.horizontal, 50)
            
            Button("Next Question") {
                checkAnswer()
                generateQuestion()
                answer = nil
            }
            
            Text("Your score: \(score)")
        }
        .alert("Game Over", isPresented: $isGameOver) {
            Button("Play again", action: generateQuestion)
        } message: {
            Text("Your final score: \(score)")
        }
    }
    
    func generateQuestion() {
        multiplicationNumber =  Int.random(in: 1...12)
    }
    
    func checkAnswer() {
        while questionCount <= selectedNumberOfQuestions {
            if answer == multiplicationTable * multiplicationNumber {
                score += 1
            }
            questionCount += 1
        }
        
        isGameOver = true
    }
}

#Preview {
    ContentView()
}
