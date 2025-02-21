//
//  ContentView.swift
//  Day16-WeSplit
//
//  Created by Nick Krasnitskiy on 21.02.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    
    var body: some View {
        Button("Tap count: \(tapCount)") {
            self.tapCount += 1
        }
    }
}

#Preview {
    ContentView()
}
