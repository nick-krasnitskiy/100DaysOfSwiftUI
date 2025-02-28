//
//  ContentView.swift
//  Day20-GuessTheFlag
//
//  Created by Nick Krasnitskiy on 28.02.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button {
            print("Edit button was tapped.")
        } label: {
            Label("Edit", systemImage: "pencil")
                .padding()
                .foregroundStyle(.white)
                .background(.blue.gradient)
        }
    }
}

#Preview {
    ContentView()
}
