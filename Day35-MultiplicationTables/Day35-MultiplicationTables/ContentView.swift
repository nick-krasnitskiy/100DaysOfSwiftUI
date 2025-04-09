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
    @State private var answer: Int? = nil
    
    @State private var questionCount = 1
    @State private var score = 0
    @State private var isGameOver = false
    
    @State private var questions = [Question]()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.yellow
                VStack {
                    if !isGameActive {
                        VStack {
                            VStack(alignment: .leading) {
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
                                    generateQuestion()
                                    isGameActive = true
                                }
                            }
                            .toButtonStyle()
                        }
                        .toWindowStyle()
                        
                    } else {
                        VStack(spacing: 40) {
                            Text(questions[0].question)
                                .font(.title.bold())
                            TextField("Your answer", value: $answer, format: .number)
                                .textFieldStyle(.roundedBorder)
                                .keyboardType(.decimalPad)
                            Button("Next") {
                                checkAnswer()
                                answer = nil
                            }
                            .toButtonStyle()
                        }
                        .toWindowStyle()
                        .transition(.scale)
                    }
                }
            }
            .ignoresSafeArea()
            .navigationTitle("Multiplication Tables")
            .alert("Game Over", isPresented: $isGameOver) {
                Button("Play again") {
                    questionCount = 1
                    score = 0
                    generateQuestion()
                }
            } message: {
                Text("Your final score: \(score)")
            }
        }
    }
    
    func generateQuestion() {
        for _ in 1...selectedNumberOfQuestions + 1 {
            let multiplicationNumber = Int.random(in: 1...100)
            questions.append(Question(question: "What is \(multiplicationTable) x \(multiplicationNumber)?", answer: multiplicationTable * multiplicationNumber))
        }
    }
    
    func checkAnswer() {
        if answer == questions[0].answer {
            score += 1
        }
        
        if questionCount == selectedNumberOfQuestions {
            isGameOver = true
        }
        
        questionCount += 1
        questions.remove(at: 0)
    }
    
}

struct Question: View {
    var question: String
    var answer: Int
    
    var body: some View {
        Text(question)
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

struct ButtonModifierStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 50, height: 10)
            .padding()
            .background(.black)
            .foregroundStyle(.white)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {
    func toWindowStyle() -> some View {
        modifier(WindowModifierStyle())
    }
}

extension View {
    func toButtonStyle() -> some View {
        modifier(ButtonModifierStyle())
    }
}

#Preview {
    ContentView()
}
