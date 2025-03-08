//
//  ContentView.swift
//  Day23-ViewsAndModifiers
//
//  Created by Nick Krasnitskiy on 07.03.2025.
//

import SwiftUI

struct ContentView: View {
    let motto = Text("Draco dormiens")
    @ViewBuilder var spells: some View {
        Text("Lumos")
        Text("Obliviate")
    }
    
    var body: some View {
        VStack {
            motto
                .foregroundStyle(.red)
            spells
                .foregroundStyle(.blue)
        }
    }
}

#Preview {
    ContentView()
}
