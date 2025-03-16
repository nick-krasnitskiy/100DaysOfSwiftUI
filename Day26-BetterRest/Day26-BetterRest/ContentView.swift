//
//  ContentView.swift
//  Day26-BetterRest
//
//  Created by Nick Krasnitskiy on 15.03.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    
    var body: some View {
        Stepper("\(sleepAmount.formatted()) hourls", value: $sleepAmount, in: 4...12, step: 0.25)
    }
}

#Preview {
    ContentView()
}
