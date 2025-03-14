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
                Spacer()
                Spacer()
                Image(systemName: variants[randomVariant])
                    .resizable()
                    .styleToMainImage()
                Spacer()
                Text(userGoal ? "WIN" : "LOSE")
                    .font(.largeTitle.bold())
                Spacer()
                HStack(spacing: 20) {
                    Spacer()
                    ForEach(0..<3) { number in
                        Button {
                            checkVariants(for: number)
                            refresh()
                        } label: {
                            ZStack {
                                Color.indigo
                                Image(systemName: variants[number])
                                    .font(.largeTitle)
                                    .foregroundStyle(.white)
                            }
                            .clipShape(.circle)
                        }
                    }
                    Spacer()
                }
                Spacer()
                Text("Your score: \(score)")
                    .font(.title)
                Spacer()
            }
            .navigationTitle("Rock, Paper, Scissors")
            .navigationBarTitleDisplayMode(.inline)
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

struct MainImageStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaledToFill()
            .frame(width: 100, height: 100)
            .foregroundStyle(.indigo)
    }
}

extension View {
    func styleToMainImage() -> some View {
        modifier(MainImageStyle())
    }
}


#Preview {
    ContentView()
}
