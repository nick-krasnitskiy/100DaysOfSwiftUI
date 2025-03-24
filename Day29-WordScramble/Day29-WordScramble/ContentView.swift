//
//  ContentView.swift
//  Day29-WordScramble
//
//  Created by Nick Krasnitskiy on 21.03.2025.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        List {
            Text("Static row")
            
            ForEach(people, id: \.self) {
                Text($0)
            }
            
            Text("Static row")
        }
    }
}

#Preview {
    ContentView()
}
