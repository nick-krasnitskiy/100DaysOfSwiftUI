//
//  ContentView.swift
//  Day23-ViewsAndModifiers
//
//  Created by Nick Krasnitskiy on 07.03.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .background(.red)
            .padding()
            .background(.yellow)
            .padding()
            .background(.green)
            .padding()
            .background(.blue)
    }
}

#Preview {
    ContentView()
}
