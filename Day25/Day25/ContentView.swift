//
//  ContentView.swift
//  Day25
//
//  Created by Nick Krasnitskiy on 09.03.2025.
//

import SwiftUI

struct ContentView: View {
    let variants = ["mountain.2", "scissors", "newspaper"]
    
    @State private var randomVariant = Int.random(in: 0...2)
    @State private var userGoal = Bool.random()
    @State private var score = 0
    @State private var questionCount = 0
    @State private var isShowAlert = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Image(systemName: variants[randomVariant])
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height: 70)
                    .foregroundStyle(.indigo)
                    
                Text(userGoal ? "Win" : "Lose")
                
                HStack(spacing: 30) {
                    ForEach(0..<3) { number in
                        Button {
                            checkVariants(for: number)
                            refresh()
                        } label: {
                            Image(systemName: variants[number])
                                .font(.largeTitle)
                        }
                    }
                }
                Text("Your score is \(score)")
            }
            .navigationTitle("Rock, Paper, Scissors")
            .alert("", isPresented: $isShowAlert) {
                Button("Play again", action: refresh)
            } message: {
                Text("Your final score: \(score)")
            }
        }
    }
    
    func checkVariants(for number: Int) {
        if userGoal {
            switch (randomVariant, number) {
            case (0, 0), (2, 0), (0, 1), (1, 1), (1, 2), (2, 2):
                score -= 1
            default:
                score += 1
            }
        } else {
            switch (randomVariant, number) {
            case (0 , 0), (1, 0), (1, 1), (2, 1), (0, 2), (2, 2):
                score -= 1
            default:
                score += 1
            }
        }
    }
    
    func refresh() {
        userGoal.toggle()
        randomVariant = Int.random(in: 0...2)
        questionCount += 1
        
        if questionCount >= 10 {
            score = 0
            questionCount = 0
            isShowAlert = true
        }
    }
}

#Preview {
    ContentView()
}
