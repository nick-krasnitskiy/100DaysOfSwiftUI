//
//  ContentView.swift
//  Day26-BetterRest
//
//  Created by Nick Krasnitskiy on 15.03.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    
    var body: some View {
        DatePicker("Please enter a date", selection: $wakeUp, in: Date.now..., displayedComponents: .hourAndMinute)
            .labelsHidden()
    }
    
    func exampleDates() {
        // create a second Date instance set to one day in seconds from now
        let tomorrow = Date.now.addingTimeInterval(8400)
        
        // create a range from those two
        let range = Date.now...tomorrow
    }
}

#Preview {
    ContentView()
}
