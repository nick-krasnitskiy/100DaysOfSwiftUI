//
//  Habit.swift
//  HabitTracker
//
//  Created by Nick Krasnitskiy on 23.04.2025.
//

import Foundation

struct Habit: Identifiable, Equatable {
    var id = UUID()
    let title: String
    let description: String
}
