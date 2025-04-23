//
//  ContentView.swift
//  HabitTracker
//
//  Created by Nick Krasnitskiy on 23.04.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var habits = Habits()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(habits.items) { habit in
                    VStack {
                        Text(habit.title)
                        Text(habit.description)
                    }
                }
            }
            .navigationTitle("Habit Tracker")
            .toolbar {
                NavigationLink("Add habit") {
                    HabitView(habits: habits)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
