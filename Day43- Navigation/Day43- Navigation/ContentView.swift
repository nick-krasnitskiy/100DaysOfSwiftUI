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
            Text("Hello world!")
                .toolbar {
                    ToolbarItemGroup(placement: .topBarLeading) {
                        Button("Tap Me") {
                            // button action here
                        }
                        
                        Button("Tap Me 2") {
                            // button action here
                        }
                    }
                }
        }
    }
}



#Preview {
    ContentView()
}
