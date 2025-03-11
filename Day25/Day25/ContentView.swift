//
//  ContentView.swift
//  Day25
//
//  Created by Nick Krasnitskiy on 09.03.2025.
//

import SwiftUI

struct ContentView: View {
    let variants = ["mountain.2", "newspaper", "scissors"]
    let goals = ["Win", "Lose"]
    
    @State private var randomVariant = Int.random(in: 0...2)

    var body: some View {
        VStack {
            Image(systemName: variants[randomVariant])
                .font(.largeTitle)
        }
    }
}

#Preview {
    ContentView()
}
