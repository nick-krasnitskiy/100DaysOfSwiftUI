//
//  ContentView.swift
//  Day26-BetterRest
//
//  Created by Nick Krasnitskiy on 15.03.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text(Date.now.formatted(date: .long, time: .shortened))
    }
    
    func exampleDates() {
        let components = Calendar.current.dateComponents([.hour, .minute], from: .now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
}

#Preview {
    ContentView()
}
