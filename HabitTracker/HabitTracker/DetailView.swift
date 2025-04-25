//
//  DetailView.swift
//  HabitTracker
//
//  Created by Nick Krasnitskiy on 24.04.2025.
//

import SwiftUI

struct DetailView: View {
    let habit: Habit
    let habits: Habits
    
    @State private var competionCount = 0
    
    var body: some View {
        NavigationStack {
            List {
                Text(habit.description)
                HStack {
                    Text("This habit has completed: \(competionCount) times")
                    Spacer()
                    Button {
                        competionCount += 1
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .navigationTitle(habit.title)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    DetailView(habit: Habit(title: "One", description: "Useful habit"), habits: Habits())
}
