//
//  DetailView.swift
//  HabitTracker
//
//  Created by Nick Krasnitskiy on 24.04.2025.
//

import SwiftUI

struct DetailView: View {
    let habit: Habit
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(habit.description)
            }
            .navigationTitle(habit.title)
        }
    }
}

#Preview {
    DetailView(habit: Habit(title: "One", description: "Useful habit"))
}
