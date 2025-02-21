//
//  ContentView.swift
//  Day16-WeSplit
//
//  Created by Nick Krasnitskiy on 21.02.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text:  $name)
            Text("Your name is \(name)")
        }
    }
}

#Preview {
    ContentView()
}
