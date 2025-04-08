//
//  ContentView.swift
//  Day35-MultiplicationTables
//
//  Created by Nick Krasnitskiy on 07.04.2025.
//

import SwiftUI

struct ContentView: View {
    let numberOfQuestions = [5, 10, 20]
    
    @State private var isGameActive = false
    
    @State private var selectedNumberOfQuestions = 5
    @State private var multiplicationTable = 2
    @State private var multiplicationNumber =  Int.random(in: 1...12)
    @State private var answer: Int? = nil
    
    @State private var questionCount = 1
    @State private var score = 0
    @State private var isGameOver = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.yellow
                VStack {
                    if !isGameActive {
                        VStack {
                            VStack(alignment: .leading, spacing: 20) {
                                Text("Which multiplication table do you want to practice?")
                                    .font(.headline)
                                Stepper("\(multiplicationTable) tables", value: $multiplicationTable, in: 2...12)
                                Text("How many questions do you want to be asked?")
                                    .font(.headline)
                                Picker("Questions", selection: $selectedNumberOfQuestions)  {
                                    ForEach(numberOfQuestions, id: \.self) {
                                        Text("\($0)")
                                    }
                                }
                                .pickerStyle(.segmented)
                            }
                            Button("Start") {
                                withAnimation {
                                    isGameActive = true
                                }
                            }
                                .frame(width: 50, height: 10)
                                .padding()
                                .background(.black)
                                .foregroundStyle(.white)
                                .clipShape(.rect(cornerRadius: 10))
                               
                        }
                        .toWindowStyle()
                        
                    } else {
                        VStack {
                            Text("What is \(multiplicationTable) x \(multiplicationNumber)?")
                            
                            TextField("Your answer", value: $answer, format: .number)
                            
                            Button("Next Question") {
                                checkAnswer()
                                generateQuestion()
                                answer = nil
                            }
                            Text("Your score: \(score)")
                        }

                        .toWindowStyle()
                        .transition(.scale)
                    }
                }
            }
            .ignoresSafeArea()
            .navigationTitle("Multiplication Tables")
            .alert("Game Over", isPresented: $isGameOver) {
                Button("Play again", action: generateQuestion)
            } message: {
                Text("Your final score: \(score)")
            }
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

struct WindowModifierStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .fixedSize(horizontal: false, vertical: true)
            .frame(width: 300, height: 250)
            .padding()
            .background(.regularMaterial)
            .clipShape(.rect(cornerRadius: 20))
    }
}

extension View {
    func toWindowStyle() -> some View {
        modifier(WindowModifierStyle())
    }
}

#Preview {
    ContentView()
}
