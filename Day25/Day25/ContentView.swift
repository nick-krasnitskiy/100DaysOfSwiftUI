//
//  ContentView.swift
//  Day25
//
//  Created by Nick Krasnitskiy on 09.03.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        let binding = Binding (
            get: { selection },
            set: { selection = $0 }
        )
        
        return VStack {
            Picker("Select a nimber", selection: binding) {
                ForEach(0..<3) {
                    Text("Item \($0)")
                }
            }
            .pickerStyle(.segmented)
        }

    }
}

#Preview {
    ContentView()
}
