//
//  ContentView.swift
//  Day23-ViewsAndModifiers
//
//  Created by Nick Krasnitskiy on 07.03.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    
    var body: some View {
        Button("Hello, world") {
            // flip the Boolean between true and false
            useRedText.toggle()
        }
        .foregroundStyle(useRedText ? .red : .blue)
    }
}

#Preview {
    ContentView()
}
