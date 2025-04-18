//
//  ContentView.swift
//  Day43- Navigation
//
//  Created by Nick Krasnitskiy on 18.04.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                NavigationLink("Select \(i)", value: i)
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected \(selection)")
            }
        }
    }
}

#Preview {
    ContentView()
}
