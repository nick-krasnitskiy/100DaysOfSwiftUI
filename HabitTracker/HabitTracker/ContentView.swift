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
                    NavigationLink {
                        DetailView(habit: habit, habits: habits)
                    } label: {
                        VStack(alignment: .leading) {
                            Text(habit.title)
                                .fontWeight(.bold)
                            Text(habit.description)
                            Text("\(habit.completionCount)")
                        }
                    }
                }
                .onDelete(perform: removeItems)
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
    
    func removeItems(at offsets: IndexSet) {
        habits.items.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
