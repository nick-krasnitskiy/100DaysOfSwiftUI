//
//  ContentView.swift
//  Day23-ViewsAndModifiers
//
//  Created by Nick Krasnitskiy on 07.03.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Gryffindor")
                .font(.largeTitle)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .font(.title)
    }
}

#Preview {
    ContentView()
}
