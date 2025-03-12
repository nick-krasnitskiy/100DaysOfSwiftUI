//
//  ContentView.swift
//  Day25
//
//  Created by Nick Krasnitskiy on 09.03.2025.
//

import SwiftUI

struct ContentView: View {
    let variants = ["mountain.2", "newspaper", "scissors"]
    
    @State private var randomVariant = Int.random(in: 0...2)
    @State private var userGoal = true

    var body: some View {
        VStack(spacing: 30) {
            Image(systemName: variants[randomVariant])
                .font(.largeTitle)
            Text(userGoal ? "Win" : "Lose")
            
            HStack(spacing: 30) {
                ForEach(variants, id: \.self) { name in
                    Button {
                        // do
                    } label: {
                        Image(systemName: name)
                            .font(.largeTitle)
                    }
                }
            }
            
            Button("Next") {
                userGoal.toggle()
                randomVariant = Int.random(in: 0...2)
            }
        }
    }
}

#Preview {
    ContentView()
}
