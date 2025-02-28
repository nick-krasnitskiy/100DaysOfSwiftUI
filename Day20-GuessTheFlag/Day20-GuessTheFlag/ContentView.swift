//
//  ContentView.swift
//  Day20-GuessTheFlag
//
//  Created by Nick Krasnitskiy on 28.02.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important Message", isPresented: $showingAlert) {
            Button("OK", role: .cancel) {}
        } message: {
            Text("Pleade read this.")
        }
    }
}

#Preview {
    ContentView()
}
