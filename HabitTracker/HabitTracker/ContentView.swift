//
//  ContentView.swift
//  HabitTracker
//
//  Created by Nick Krasnitskiy on 23.04.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var habits = Habits()
    @State private var AddHabitIsPresented = false
    
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
                Button("Add habit") {
                    AddHabitIsPresented = true
                }
            }
            .sheet(isPresented: $AddHabitIsPresented) {
                HabitView(habits: habits)
            }
        }
    }
}

#Preview {
    ContentView()
}
