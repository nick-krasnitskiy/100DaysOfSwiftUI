//
//  ContentView.swift
//  Day43- Navigation
//
//  Created by Nick Krasnitskiy on 18.04.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var title = "SwiftUI"
    
    var body: some View {
        NavigationStack {
            Text("Hello, world!")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}



#Preview {
    ContentView()
}
