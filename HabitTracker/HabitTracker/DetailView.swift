//
//  DetailView.swift
//  HabitTracker
//
//  Created by Nick Krasnitskiy on 24.04.2025.
//

import SwiftUI

struct DetailView: View {
    var habit: Habit
    let habits: Habits

    var body: some View {
        NavigationStack {
            List {
                Text(habit.description)
                HStack {
                    Text("This habit has completed: \(habit.completionCount) times")
                    Spacer()
                    Button {
                        var copyHabit = habit
                        if let i = habits.items.firstIndex(of: copyHabit) {
                            habits.items[i] = copyHabit
                            habits.items[i].completionCount += 1
                        }
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
    DetailView(habit: Habit(title: "Run", description: "Running", completionCount: 0), habits: Habits())
}
